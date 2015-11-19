// Simple ELF file parser.
//
// Copyright (c) 2015 DIKU.
// Copenhagen Liberal License - v0.5 - September 6, 2015.
//
// Authors:
//  Annie Jane Pinder <anpi@di.ku.dk>
//  Oleksandr Shturmov <oleks@oleks.info>

#ifndef KUDiMS_ELF_H
#define KUDiMS_ELF_H

#include <stddef.h> // size_t
#include <stdint.h> // uint32_t

#define ELF_ERROR_IO_ERROR        (-1)
#define ELF_ERROR_OUT_OF_MEM      (-2)
#define ELF_ERROR_NOT_ELF         (-3)
#define ELF_ERROR_NOT_SUPPORTED   (-4)

int
elf_dump(const char *path, uint32_t *entry,
  unsigned char *mem, size_t memsz);

#endif // KUDiMS_ELF_H
