mov ah, 0x0e

mov bx, 0x7c0; 0x7c0 * 16 + offset = [org 0x7c00] => получен правильный абсолютный адрес символа => он выводится на экран 
mov ds, bx ; Дополнительный шаг, так как в сегментные регистры нельзя напрямую класть значения адресов
mov al, [the_secret]
int 0x10

jmp $

the_secret:
    db "X"

; Padding and magic number
times 510-($-$$) db 0

dw 0xaa55