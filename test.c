/* Copyright 2013 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved. */

#define _BSD_SOURCE
#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <endian.h>
#include <fcntl.h>
#include <unistd.h>
#include <zlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>

#define RG_MAGIC 0xFEEDBABE
#define HEADER_SIZE ( sizeof(uint32_t) * 5 + 0x80 )
struct File {
	uint32_t magic;			/* FEEDBABE */
	uint32_t size;			/* Length of file excluding header */
	uint32_t checksum;		/* 32-bit sum of all bytes in file and header, excluding checksum */
	uint32_t counter;		/* Unknown */
	uint32_t start_offset;		/* Unknown */
	char name[0x80];		/* Filename */
	uint8_t *data;			/* Pointer to mmap'd or allocated data of file */
	uint32_t decompressed_size;	/* Decompressed length of file */
	uint8_t *decompressed_data;	/* Pointer to allocated decompressed data */
};

