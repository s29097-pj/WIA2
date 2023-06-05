; Równanie, które jest obliczane w kodzie, to a + b + c * dwa,
; gdzie a = 5, b = 3, c = 2, dwa = 2.
; Wynik to 5 + 3 + 2 * 2 = 12 (wartość dziesiętna).


org 100h        ; Ustala adres początkowy kodu na 100h

mov ax, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
                ; AX = 05h (wartość dziesiętna: 5)

add ax, [b]    ; Dodaje wartość z pamięci pod adresem 'b' do wartości rejestru AX
                ; AX = AX + [b] = 05h + 03h = 08h (wartość dziesiętna: 8)

add ax, [c]    ; Dodaje wartość z pamięci pod adresem 'c' do wartości rejestru AX
                ; AX = AX + [c] = 08h + 02h = 0Ah (wartość dziesiętna: 10)

mov bx, [dwa]  ; Przenosi wartość z pamięci pod adresem 'dwa' do rejestru BX
                ; BX = 02h (wartość dziesiętna: 2)

mul bx         ; Mnoży wartość rejestru AX przez wartość rejestru BX
                ; AX = AX * BX = 0Ah * 02h = 14h (wartość dziesiętna: 20)

mov [y], ax    ; Przenosi wartość rejestru AX do pamięci pod adresem 'y'
                ; y = 14h (wartość dziesiętna: 20)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 05h       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 05h (wartość dziesiętna: 5)
b dw 03h       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 03h (wartość dziesiętna: 3)
c dw 02h       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
dwa dw 02h     ; Definiuje zmienną 'dwa' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
