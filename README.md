# Pump my MocoLUFA

**Pump my MocoLUFA** is a web-based tool that allows users to customize and generate firmware for MocoLUFA-based devices. Users can modify the device name, manufacturer name, VID, PID, and Arduino model, and download the customized firmware as a `.hex` file.

---
## Online Demo

You can try the online demo at:

[**pumpmocolufa.ezequielabregu.net**](https://pumpmocolufa.ezequielabregu.net/)

---

## Features

- **Customizable Device Name**: Set a custom name for your device.
- **Customizable Manufacturer Name**: Define the manufacturer name.
- **Random or Custom VID/PID**: Generate random USB Vendor ID (VID) and Product ID (PID) or specify your own.
- **Arduino Model Selection**: Choose between Arduino UNO or MEGA.
- **Firmware Generation**: Automatically generate a `.hex` firmware file based on the provided parameters.
- **Downloadable Firmware**: Download the generated firmware directly from the web interface.

---

## Requirements

- Python 3.10 or higher
- Flask
- AVR toolchain:
  - `avr-gcc`
  - `avr-libc`
  - `avrdude`

### Install Dependencies

1. Install Python dependencies:

   ```bash
   pip install flask
   ```

2. Install AVR toolchain (macOS example using Homebrew):

    ```bash
    brew install avr-gcc avrdude
    ```

---

### Usage

1. Clone

```bash
git clone https://github.com/your-username/pump_my_mocolufa.git
cd pump_my_mocolufa
```

1. Run the Flask Application:

   ```bash
   python app.py
   ```

2. Open the Web Interface
Open your browser and navigate to:

<http://127.0.0.1:5000/>

3. Customize Firmware

---

### Fill in the form fields

**Device Name:** Enter the name of your device.

**Manufacturer:** Enter the manufacturer name.

**VID (hex):** Use the randomly generated VID or specify your own.

**PID (hex):** Use the randomly generated PID or specify your own.

**Arduino Model:** Select either UNO or MEGA.

Click the Generate Custom Firmware button!

---

### Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

---

### Acknowledgments

LUFA Library: Developed by Dean Camera (<www.fourwalledcubicle.com>).

MocoLUFA: Based on the dualMocoLUFA project by morecat_lab.
