# Copyright (c) 2016 DIKU.
# Copenhagen Liberal License - v0.6 - January 25, 2016.
#
# Authors:
#		Annie Jane Pinder <anpi@di.ku.dk>
#  	Oleksandr Shturmov <oleks@oleks.info>

C_FILES=$(patsubst %.c,%.elf,$(wildcard *.c))
S_FILES=$(patsubst %.S,%.elf,$(filter-out _start.S,$(wildcard *.S)))

all: $(S_FILES) $(C_FILES)

%.elf: %.S
	mips-elf-as -mips32 -o $*.o --fatal-warnings $*.S
	mips-elf-ld -o $*.elf $*.o

%.elf: _start.S %.c
	mips-elf-gcc -mips32 -nostdlib -o $*.elf _start.S $*.c

show_%.elf: %.elf
	mips-elf-objdump --source -M no-aliases $<

clean:
	rm -f *.o
	rm -f *.elf

.PHONY: all clean show_*.elf
