### Description
#

<br />

https://github.com/kentlouisetonino/hw-blinking-LED/assets/69438999/b9a7a60c-509d-4fc0-8cc4-73c9fe9fa5e4

<br />

> - A blinking LED Arduino project written in C language.

> - Based on the current code, the LED will light up for 2
    seconds, then will turn off for 1 second, and will light
    again. This is an infinite cycle process.

<br />
<br />



### Local Development
#

> - This works well in Linux based system.

> - Install the necessary tools inorder to directly interact
    with Atmel AVR Microcontroller.

```bash
# Standard library for Atmel AVR devices.
# This contains most of the features required by the ISO C standard.
sudo apt install avr-libc

# A program for downloading and uploading on-chip memories of Atmel AVR Microcontroller.
sudo apt install avrdude

# A program to assemble and manipulate binary and object files for the AVR architecture.
sudo apt install binutils-avr

# GCC C cross compiler for AVR.
sudo apt install gcc-avr
```

> - Take note that the library headers might be placed here `/usr/lib/avr/include`.
