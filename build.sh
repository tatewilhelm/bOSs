#!/bin/bash

# Assemble boot to object
nasm boot/boot.nasm -o build/object/boot.o

# Compile kernel to object
i686-elf-gcc kernel/kernel.c kernel/kernel.h kernel/util/kbool.h kernel/util/kio.h  kernel/util/kio.c -o build/object/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

# Link objects into binary
i686-elf-gcc -T linker.ld -o build/binary/boss.bin -ffreestanding -O2 -nostdlib build/object/boot.o build/object/kernel.o -lgcc

qemu-system-i386 build/binary/boss.bin