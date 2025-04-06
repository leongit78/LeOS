[org 0x7c00]

mov bx, HELLO_MSG
call print_string

mov bx, LINE_FEED
call print_string

mov bx, CARRIAGE_RETURN
call print_string

mov bx, GOODBYE_MSG
call print_string

jmp $ 

%include "print_string.asm"

; Data

HELLO_MSG:
    db 'Hello world!', 0

GOODBYE_MSG:
    db 'Goodbye!', 0

LINE_FEED:
    db 0x0a, 0

CARRIAGE_RETURN:
    db 0x0d, 0

; Padding and magic number
times 510-($-$$) db 0

dw 0xaa55