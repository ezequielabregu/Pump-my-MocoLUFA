# Lines to change on Descriptors.c

## Lines 419, 421, 427, 429, 456, 458

In USB_STRING_LEN(12) put the number of characters in the name you want to use.

```c++
 /* for Serial */
 const USB_Descriptor_String_t PROGMEM ManufacturerStringSerial =
 {
     .Header                 = {.Size = USB_STRING_LEN(12), .Type = DTYPE_String},
         
     .UnicodeString          = { 'E', 'A',' ', 'M', 'I', 'D', 'I', ' ', 'F', 'O', 'O', 'T' }
 };
 
 /* for MIDI */
 const USB_Descriptor_String_t PROGMEM ManufacturerStringMIDI =
 {
     .Header                 = {.Size = USB_STRING_LEN(12), .Type = DTYPE_String},
 
     .UnicodeString          = { 'E', 'A',' ', 'M', 'I', 'D', 'I', ' ', 'F', 'O', 'O', 'T' }
 };
 ```
```c++

 /* for MIDI */
 const USB_Descriptor_String_t PROGMEM ProductStringMIDI =
 {
     .Header                 = {.Size = USB_STRING_LEN(12), .Type = DTYPE_String},
 
     .UnicodeString          = { 'E', 'A',' ', 'M', 'I', 'D', 'I', ' ', 'F', 'O', 'O', 'T' }
 };
 ```

## Lines 104 & 105
Change Vendor & Product ID to unique values

```c++
     .VendorID               = 0x03EB, <-- Change this
     .ProductID              = 0x2048, <-- Change this
```