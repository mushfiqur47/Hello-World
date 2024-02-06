        ORG     $1000
START:  LEA     STR, A1
        MOVEQ   #14, D0
        MOVEQ   #1, D1
        TRAP    #15
        MOVEQ   #0, D0
        TRAP    #15
STR:    DC.B    'Hello, World!',10,0
        END     START
