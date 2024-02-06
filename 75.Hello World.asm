.data
hello: .asciiz "Hello, World!\n"
.text
.global main
main:
    li a0, 1
    la a1, hello
    li a7, 4
    ecall
    li a0, 10
    li a7, 93
    ecall
