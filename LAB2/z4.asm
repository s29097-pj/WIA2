org 100h

; Wypisz tekst zachęty do wprowadzenia znaku
MOV AH, 09h
MOV DX, prompt
INT 21h

; Odczytaj znak z klawiatury
MOV AH, 01h
INT 21h
MOV BL, AL ; zapisz znak do BL

; Wypisz spację
MOV AH, 02h
MOV DL, ' '
INT 21h

; Wypisz odczytany znak
MOV AH, 02h
MOV DL, BL
INT 21h

; Zakończ program
MOV AH, 4Ch
INT 21h

prompt db 'Wprowadz znak: $'
