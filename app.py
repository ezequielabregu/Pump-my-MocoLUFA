from flask import Flask, render_template, request, send_file
import subprocess
import os
import re
import random

app = Flask(__name__)

BASE_DIR = os.path.abspath(os.path.dirname(__file__))
FIRMWARE_DIR = os.path.join(BASE_DIR, 'firmware')

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        device_name = request.form['device_name']
        manufacturer = request.form['manufacturer']
        vid = request.form['vid']
        pid = request.form['pid']
        arduino_model = request.form['arduino_model']

        print(f"Form Data: device_name={device_name}, manufacturer={manufacturer}, vid={vid}, pid={pid}, arduino_model={arduino_model}")  # Debugging

        try:
            modify_descriptors(device_name, manufacturer)
            modify_vid_pid(vid, pid)
            modify_makefile_pid(arduino_model)

            hex_path = compile_firmware()

            return send_file(hex_path, as_attachment=True)
        except Exception as e:
            return f"<h1>Error</h1><pre>{str(e)}</pre>"

    # Generate random VID and PID for GET requests
    random_vid = f"{random.randint(0x1000, 0xFFFF):04X}"
    random_pid = f"{random.randint(0x1000, 0xFFFF):04X}"
    return render_template('index.html', random_vid=random_vid, random_pid=random_pid)


def modify_descriptors(device_name, manufacturer):
    path = os.path.join(FIRMWARE_DIR, 'Descriptors.c')
    with open(path, 'r', encoding='utf-8') as file:
        content = file.read()

    def to_unicode_array(text):
        return ', '.join([f"'{c}'" for c in text])

    device_unicode = to_unicode_array(device_name)
    dev_len = len(device_name)

    content = re.sub(
        r'const USB_Descriptor_String_t PROGMEM ProductStringMIDI\s*=\s*\{\s*'
        r'\.Header\s*=\s*\{\.Size\s*=\s*USB_STRING_LEN\(\d+\),\s*\.Type\s*=\s*DTYPE_String\},\s*'
        r'\.UnicodeString\s*=\s*\{[^}]+\}\s*\};',
        f'''const USB_Descriptor_String_t PROGMEM ProductStringMIDI = {{
    .Header                 = {{.Size = USB_STRING_LEN({dev_len}), .Type = DTYPE_String}},
    .UnicodeString          = {{ {device_unicode} }}
}};''',
        content,
        flags=re.DOTALL
    )

    with open(path, 'w', encoding='utf-8') as file:
        file.write(content)

def modify_vid_pid(vid, pid):
    path = os.path.join(FIRMWARE_DIR, 'Descriptors.c')
    with open(path, 'r', encoding='utf-8') as file:
        content = file.read()

    content = re.sub(r'\.VendorID\s*=\s*0x[0-9A-Fa-f]+', f'.VendorID = 0x{vid}', content)
    content = re.sub(r'\.ProductID\s*=\s*0x[0-9A-Fa-f]+', f'.ProductID = 0x{pid}', content)

    with open(path, 'w', encoding='utf-8') as file:
        file.write(content)

def modify_makefile_pid(arduino_model):
    print(f"Arduino Model received: {arduino_model}")  # Debugging

    path = os.path.join(FIRMWARE_DIR, 'makefile')
    with open(path, 'r', encoding='utf-8') as file:
        content = file.readlines()

    if arduino_model.lower() == "mega":
        model_pid = "0x0010"
    elif arduino_model.lower() == "uno":
        model_pid = "0x0001"
    else:
        raise ValueError("Invalid Arduino Model. Choose 'Mega' or 'UNO'.")

    pid_updated = False
    for i, line in enumerate(content):
        if "ARDUINO_MODEL_PID" in line and not line.strip().startswith("#"):
            print(f"Original line: {line.strip()}")  # Debugging
            content[i] = f"ARDUINO_MODEL_PID = {model_pid}\n"
            print(f"Updated line: {content[i].strip()}")  # Debugging
            pid_updated = True
            break

    if not pid_updated:
        raise Exception("ARDUINO_MODEL_PID line not found in the makefile.")

    with open(path, 'w', encoding='utf-8') as file:
        file.writelines(content)

def compile_firmware():
    build_dir = os.path.abspath(FIRMWARE_DIR)

    # Run the make command
    result = subprocess.run(['make'], cwd=build_dir, capture_output=True)

    print("STDOUT:", result.stdout.decode())
    print("STDERR:", result.stderr.decode())

    if result.returncode != 0:
        raise Exception(f"Build failed:\n{result.stderr.decode()}")

    # Check for the generated .hex file
    hex_file = os.path.join(build_dir, 'dualMoco.hex')
    if not os.path.isfile(hex_file):
        raise Exception("HEX file not found after build")

    return hex_file

import os
print(f"Templates folder: {os.path.abspath('templates')}")

if __name__ == '__main__':
#    app.run(host="0.0.0.0", port=5000)    
    app.run(debug=True)
