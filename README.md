# EriasOS

## Introduction

This is my learning on how to build an operating system from scratch (and maybe learn a little asm, c and vim on the side ;)

## Commands

### Compile bootloader

To create a binary file: `nasm -f bin boot.asm -o boot.bin`

### Run virtual machine

-hda stands for using the hard drive
`qemu-system-x86_64 -hda ./boot.bin`

### Other

Show the binary file's assembly instructions:
`ndisasm boot.bin`

Created by Elias Cerne
