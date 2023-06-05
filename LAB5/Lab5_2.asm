; Równanie, które jest obliczane w kodzie, to a * b + c,
; gdzie a = 5, b = 3, c = 2.
; Wynik to 5 * 3 + 2 = 17 (wartość dziesiętna).


org 100h        ; Ustala adres początkowy kodu na 100h

mov ax, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
                ; AX = 05h (wartość dziesiętna: 5)

mov bx, [b]    ; Przenosi wartość z pamięci pod adresem 'b' do rejestru BX
                ; BX = 03h (wartość dziesiętna: 3)

mul bx         ; Mnoży wartość rejestru AX przez wartość rejestru BX
                ; AX = AX * BX = 05h * 03h = 0Fh (wartość dziesiętna: 15)

add ax, [c]    ; Dodaje wartość z pamięci pod adresem 'c' do wartości rejestru AX
                ; AX = AX + [c] = 0Fh + 02h = 11h (wartość dziesiętna: 17)

mov [y], ax    ; Przenosi wartość rejestru AX do pamięci pod adresem 'y'
                ; y = 11h (wartość dziesiętna: 17)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 05h       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 05h (wartość dziesiętna: 5)
b dw 03h       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 03h (wartość dziesiętna: 3)
c dw 02h       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
