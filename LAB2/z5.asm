org 100h

; Ustaw kursor na środku ekranu
MOV AH, 0Ch
MOV AL, 'C'
MOV BH, 0
MOV CX, 1
MOV DH, 12 ; wiersz 12 to połowa ekranu
MOV DL, 40 ; kolumna 40 to środek ekranu
INT 10h

; Zakończ program
MOV AH, 4Ch
INT 21h
