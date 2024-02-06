.data
hello: .asciz "Hello, World!\n"
.text
.global _start
_start:
    sethi %hi(hello), %o0
    or %o0, %lo(hello), %o0
    mov 13, %o2
    mov 4, %g1
    ta 0x10
    mov 0, %o0
    mov 1, %g1
    ta 0x10
