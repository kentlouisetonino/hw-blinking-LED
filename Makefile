object-file:
				# -0s: Optimizes for size, trying to produce the smallest code possible.
				# -DF_CPU=16000000UL : A macro definition to specify CPU frequency in Hertz.
				# -c: A flag that tells compiler to compile the source code without linking.
				# -o ./src/main.o: Specifies the name and location of compiled object file.
				# ./src/main.c: Path to the source code that you want to compile.
				avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o ./src/main.o ./src/main.c

binary-file:
				# -o: Specifies the output file name and location.
				# This command is linking the object file ./src/main.o to produce an output binary file named ./src/main.bin.
				avr-gcc -o ./src/main.bin ./src/main.o

intel-hex-file:
				# -O ihex: This specifies the output format.
				# -O ihex: Convert the input file to intel HEX format (ihex).
				# -O ihex: Intel HEX is a text based file format that represents binary data.
				# -R .eeprom: Excludes a specific section (.eeprom) from the output file.
				# -R .eeprom: Typically contains EEPROM data.
				# ./src/main.bin: Input file that avr-objcopy will convert.
				# ./src/main.hex: The output file where the Intel HEX data will be stored.
				# This commands are taking binary file, converts it to Intel HEX format, exclude the EEPROM data, and save .hex file.
				# The resulting .hex file can be programmed directly into the microcontrollers memory.
				avr-objcopy -O ihex -R .eeprom ./src/main.bin ./src/main.hex

upload-hex-file:
				# -F: Override some safety checks.
				# -F: Used when you want to ignore warnings.
				# -V: Enables verbose or detailed output.
				# -c arduino: Specifies the communication protocol to use.
				# -c arduino: In this case, it uses the protocol appropriate for Arduino boards.
				# -p ATMEGA328P: Specifies the target AVR microcontroller.
				# -P /dev/ttyUSB0: Specifies the communicataion port.
				# -b 115200: Sets the baud rate for communication between the computer and AVR Microcontroller.
				# -b 115200: In this case, 115200 bits per second.
				# -U flash:w:./src/main.hex: Write the content of main.hex file to the flash memory of the AVR Microcontroller.
				sudo avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyUSB0 -b 115200 -U flash:w:./src/main.hex


build:
				make object-file
				make binary-file
				make intel-hex-file
				make upload-hex-file
