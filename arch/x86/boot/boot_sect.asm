mov bx, 5

cmp bx, 4
jg _else_if

mov al, 'A'
jmp _print

_else_if:
    cmp bx, 40
    jge _else
    
    mov al, 'B'
    jmp _print

_else:
    mov al, 'C'
    jmp _print

_print:
    mov ah, 0x0e  ; scrolling teletype BIOS routine
    int 0x10

jmp $ 

times 510-($-$$) db 0

dw 0xaa55