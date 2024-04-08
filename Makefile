default:
				avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o ./src/main.o ./src/main.c
				avr-gcc -o ./src/main.bin ./src/main.o
				avr-objcopy -O ihex -R .eeprom ./src/main.bin ./src/main.hex
				sudo avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyUSB0 -b 115200 -U flash:w:./src/main.hex
