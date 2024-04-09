### Definitions
#

```plaintext
OBJECT FILE
    - The result of compiling source code file (C) without linking.
    - It contains machine code, but it's not a complete program.
    - They're used as inputs to the linker to create the final executable binary.

BINARY FILE
    - The final output of the compilation and linking process.
    - It contains machine code that can be directly executed by the platform's processor.
    - It's a complete executable program that can be run or linked with other programs.

LINKING
    - The process of combining multiple object files and libraries together to create a single executable binary file.
    - The final stage of the compilation process in languages like C.

avr-gcc
    - A GCC compiler specifically configured to compile AVR microcontrollers.

avr-objcopy
    - A program used to copy and convert object files in the context of AVR Microcontroller development.

avrdude
    - A program used to upload firmware to AVR microcontrollers.
```
