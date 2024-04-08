# OBJECT FILE
# The result of compiling source code file (C) without linking.
# It contains machine code, but it's not a complete program.
# They're used as inputs to the linker to create the final executable binary.

# BINARY FILE
# The final output of the compilation and linking process.
# It contains machine code that can be directly executed by the platform's processor.
# It's a complete executable program that can be run or linked with other programs.

# LINKING
# The process of combining multiple object files and libraries together to create a single executable binary file.
# The final stage of the compilation process in languages like C.

# avr-gcc: A GCC compiler specifically configured to compile AVR microcontrollers.
# Object

default:
				# -0s: Optimizes for size, trying to produce the smallest code possible.
				# -DF_CPU=16000000UL: A macro definition to specify CPU frequency in Hertz.
				# -c: A flag that tells compiler to compile the source code without linking.
				# -o ./src/main.o: Specifies the name and location of compiled object file.
				# ./src/main.c: Path to the source code that you want to compile.
				avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o ./src/main.o ./src/main.c
				# -o: Specifies the output file name and location.
				# This command is linking the object file ./src/main.o to produce an output binary file named ./src/main.bin.
				avr-gcc -o ./src/main.bin ./src/main.o
				avr-objcopy -O ihex -R .eeprom ./src/main.bin ./src/main.hex
				sudo avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyUSB0 -b 115200 -U flash:w:./src/main.hex
