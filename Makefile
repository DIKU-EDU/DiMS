# Copyright (c) 2015 DIKU.
# Copenhagen Liberal License - v0.5 - September 6, 2015.
#
# Authors:
#   Annie Jane Pinder <anpi@di.ku.dk>
#   Oleksandr Shturmov <oleks@oleks.info>

.PHONY: all clean asm c

CC=gcc
CFLAGS=-Werror -Wall -Wextra -pedantic -std=c11

all: asm c sim

asm:
	make --no-print-directory -C asm

c:
	make --no-print-directory -C c

sim: mips32.h elf.o sim.c
	$(CC) $(CFLAGS) -o sim elf.o sim.c

elf.o: elf.h elf.c
	$(CC) $(CFLAGS) -c elf.c

clean:
	rm -f *.o
	rm -f *.elf
	make --no-print-directory -C asm clean
	make --no-print-directory -C c clean
