default:
				# avr-gcc: A GCC compiler specifically configured to compile AVR microcontrollers.
				# -0s: Optimizes for size, trying to produce the smallest code possible.
				# -DF_CPU=16000000UL: A macro definition to specify CPU frequency in Hertz.
				# -c: A flag that tells compiler to compile the source code without linking.
				# -o ./src/main.o: Specifies the name and location of compiled object file.
				# ./src/main.c: Path to the source code that you want to compile.
				avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o ./src/main.o ./src/main.c
				avr-gcc -o ./src/main.bin ./src/main.o
				avr-objcopy -O ihex -R .eeprom ./src/main.bin ./src/main.hex
				sudo avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyUSB0 -b 115200 -U flash:w:./src/main.hex
