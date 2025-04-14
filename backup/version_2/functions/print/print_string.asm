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

print_nl:
    pusha 

    mov ah, 0x0e ; BIOS teletype routine
    mov al, 0x0a ; LF = line feed = '\n'
    int 0x10 ; print on the screen interrupt
    mov al, 0x0d ; CR = carriage return = '\r'
    int 0x10

    popa
    ret