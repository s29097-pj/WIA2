; Równanie, które jest obliczane w tym kodzie, to (a / b) + c,
; gdzie a = 10, b = 2, c = 2.
; Wynik to (10 / 2) + 2 = 7 (wartość dziesiętna).


org 100h        ; Ustala adres początkowy kodu na 100h

mov ax, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
                ; AX = 0Ah (wartość dziesiętna: 10)

mov bl, [b]    ; Przenosi wartość z pamięci pod adresem 'b' do rejestru BL
                ; BL = 02h (wartość dziesiętna: 2)

div bl         ; Dzieli wartość rejestru AX przez wartość rejestru BL
                ; AL = AX / BL = 0Ah / 02h = 05h (wartość dziesiętna: 5)

add al, [c]    ; Dodaje wartość z pamięci pod adresem 'c' do wartości rejestru AL
                ; AL = AL + [c] = 05h + 02h = 07h (wartość dziesiętna: 7)

mov [y], al    ; Przenosi wartość rejestru AL do pamięci pod adresem 'y'
                ; y = 07h (wartość dziesiętna: 7)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 0Ah       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 0Ah (wartość dziesiętna: 10)
b dw 02h       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
c dw 02h       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
