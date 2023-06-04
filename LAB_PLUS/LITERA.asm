org 100h

section .data
    wprowadz_msg db 0ah, "Wprowadz jeden znak: $"
    wielka_litera_msg db "Wielka litera$", 0
    mala_litera_msg db "Mala litera$", 0
    error_msg db "Error - to nie jest litera$", 0

section .text
    ; Wyświetl wiadomość o wprowadzeniu znaku
    mov ah, 09h
    mov dx, wprowadz_msg
    int 21h

    ; Pobierz znak od użytkownika
    mov ah, 01h
    int 21h

    ; Sprawdź, czy znak jest wielką literą
    cmp al, 'A'
    jb nie_litera
    cmp al, 'Z'
    jbe wielka_litera

    ; Sprawdź, czy znak jest małą literą
    cmp al, 'a'
    jb nie_litera
    cmp al, 'z'
    jbe mala_litera

nie_litera:
    ; Znak nie jest literą, wyświetl informację o błędzie
    mov ah, 09h
    mov dx, error_msg
    int 21h
    jmp koniec

wielka_litera:
    ; Znak jest wielką literą, wyświetl informację na górze
    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    mov ah, 09h
    mov dx, wielka_litera_msg
    int 21h
    jmp koniec

mala_litera:
    ; Znak jest małą literą, wyświetl informację na dole
    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    mov ah, 09h
    mov dx, mala_litera_msg
    int 21h

koniec:
    ; Wyjście z programu
    mov ah, 4Ch
    int 21h
