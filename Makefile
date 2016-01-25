# Copyright (c) 2016 DIKU.
# Copenhagen Liberal License - v0.6 - January 25, 2016.
#
# Authors:
#   Oleksandr Shturmov <oleks@oleks.info>
#   Annie Jane Pinder <anpi@di.ku.dk>

.PHONY: all clean asm c

CC=gcc
CFLAGS=-Werror -Wall -Wextra -pedantic -std=c11

all: asm c sim

asm:
	make --no-print-directory -C asm

c:
	make --no-print-directory -C c

sim: mips32.h elf.o core.o sim.c
	$(CC) $(CFLAGS) -g -o sim elf.o core.o sim.c

core.o: core.h core.c
	$(CC) $(CFLAGS) -g -c core.c

mem.o: mem.h mem.c
	$(CC) $(CFLAGS) -g -c mem.c

elf.o: elf.h elf.c
	$(CC) $(CFLAGS) -c elf.c

clean:
	rm -f *.o
	rm -f *.elf
	make --no-print-directory -C asm clean
	make --no-print-directory -C c clean
