.data
    hello: .asciz "Hello, World!\n"
.text
.globl main
main:
    .ent main
    .prologue 0
    .frame $fp,0,$31
    .mask 0x40000000,-8
    addiu $sp,$sp,-8
    stq $31,0($sp)
    .endp main
    .data
.globl hello
hello: .asciz "Hello, World!\n"
    .section .note.GNU-stack,"",@progbits
