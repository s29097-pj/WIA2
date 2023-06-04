org 100h

mov ah, 09h       ; Wywołanie przerwania 21h dla wypisania stringa
mov dx, string
int 21h

mov ah, 02h       ; Wywołanie przerwania 21h dla wyświetlenia znaku serca
mov dl, 3         ; Kod ASCII znaku serca
int 21h

mov ah, 00h       ; Zakończenie programu
int 21h

string db "KOCHAM ASEMBLERA$"

