_start:

    mov ah, 0x0e
    mov al, 'B'
    int 0x10

    mov ah, 0x0e
    mov al, 'o'
    int 0x10

    mov ah, 0x0e
    mov al, 'o'
    int 0x10

    mov ah, 0x0e
    mov al, 't'
    int 0x10

    

    times 510-($-$$) db 0
    db 0x55, 0xaa
