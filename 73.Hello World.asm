.data
hello: .string "Hello, World!\n"
.text
.globl _start
_start:
    li r0, 4
    li r3, 1
    mr r4, hello
    li r5, 14
    sc
    li r0, 1
    li r3, 0
    sc
