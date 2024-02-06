* Hello World program for the Motorola 68000
* Assemble and link with:
*   m68k-elf-as hello.s -o hello.o
*   m68k-elf-ld -o hello hello.o

    .section .data
hello:
    .asciz "Hello, World!\n"
    .section .text
    .globl _start
_start:
    move.l #4, %d0
    lea hello, %a1
    move.l #13, %d1
    move.l #1, %d7
    trap #15

    move.l #1, %d0
    move.l #0, %d1
    trap #15
