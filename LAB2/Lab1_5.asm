org 100h ; ustawia adres początkowy programu na 100h

; Ustaw kursor na środku ekranu
MOV AH, 0Ch ; funkcja przerwania 10h, która ustawia kursor
MOV AL, 'C' ; znak kursora w postaci kodu ASCII
MOV BH, 0   ; numer strony
MOV CX, 1   ; liczba powtórzeń
MOV DH, 12  ; numer wiersza, połowa ekranu
MOV DL, 40  ; numer kolumny, środek ekranu
INT 10h     ; wywołanie przerwania 10h

; Zakończ program
MOV AH, 4Ch ; ustaw kod wyjścia
INT 21h     ; wywołaj przerwanie 21h, które zakończy program