
print_string:
    pusha
    mov ah, 0x0e
    return_to_check:
        mov al, [bx]
        cmp al, 0
        jne print_symbol
        popa
        ret

    print_symbol:
        int 0x10
        inc bx
        jmp return_to_check