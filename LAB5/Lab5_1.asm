; W tym kodzie jest wykonywane równanie a + b + c,
; gdzie a = 5, b = 3, c = 255, a y przechowuje wynik równania.


org 0100h ; Ustawia początkowy adres w pamięci programu na 0100h

mov ax, [a] ; ax = 05h, a = 05h (wartość dziesiętna: 5)
add ax, [b] ; ax = 08h (5 + 3), b = 03h (wartość dziesiętna: 3)
add ax, [c] ; ax = 07Dh (8 + 255), c = 0FFh (wartość dziesiętna: 255)
mov [y], ax ; y = 07Dh (wartość dziesiętna: 125)

mov dx, message ; Przenosi adres etykiety message do rejestru dx (do wyświetlenia na ekranie)
mov ah, 09h ; Ustawia wartość 09h w rejestrze ah (funkcja wyświetlania łańcucha znaków)
int 21h ; Wywołuje przerwanie 21h, aby wyświetlić łańcuch znaków przechowywany w dx

mov ah, 00h ; Ustawia wartość 00h w rejestrze ah (funkcja odczytu znaku)
int 21h ; Wywołuje przerwanie 21h, aby odczytać znak z wejścia

message db 'Wynik: $' ; Deklaruje łańcuch znaków "Wynik: $" przechowywany pod etykietą message

a dw 05h ; Deklaruje zmienną a jako 16-bitową wartość bez znaku i inicjalizuje ją wartością 05h (wartość dziesiętna: 5)
b dw 03h ; Deklaruje zmienną b jako 16-bitową wartość bez znaku i inicjalizuje ją wartością 03h (wartość dziesiętna: 3)
c dw 0FFh ; Deklaruje zmienną c jako 16-bitową wartość bez znaku i inicjalizuje ją wartością 0FFh (wartość dziesiętna: 255)
y dw 00h ; Deklaruje zmienną y jako 16-bitową wartość bez znaku i inicjalizuje ją wartością 00h (wartość dziesiętna: 0)
