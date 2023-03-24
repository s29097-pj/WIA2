org 100h	; Ustawia punkt początkowy programu na adres 100h przy pomocy dyrektywy "org 100h".

MOV AH, 02h  ; Ustawiamy tryb funkcji przerwania 10h na ustawianie pozycji kursora
MOV DH, 0    ; Ustawiamy wiersz na 0
MOV DL, 0    ; Ustawiamy kolumnę na 0
INT 10h      ; Wywołujemy przerwanie 10h, aby ustawić pozycję kursora

MOV AH, 02h  ; Ustawiamy tryb funkcji przerwania 21h na wypisywanie znaku na ekranie
MOV DL, 'A'  ; Ustawiamy znak do wypisania
INT 21h      ; Wywołujemy przerwanie 21h, aby wypisać znak 'A'

MOV AH, 00h  ; Ustawiamy tryb funkcji przerwania 21h na oczekiwanie na wejście z klawiatury
INT 21h      ; Wywołujemy przerwanie 21h