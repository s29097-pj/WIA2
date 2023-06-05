; W tym kodzie jest wykonywane równanie (b + c) * a / y,
; gdzie a = 32, b = 2, c = 3, y = 5.
; Wynik to (2 + 3) * 32 / 5 = 10 * 6 = 60 (wartość dziesiętna).


org 100h        ; Ustala adres początkowy kodu na 100h

mov dx, [b]    ; Przenosi wartość z pamięci pod adresem 'b' do rejestru DX
                ; DX = 02h (wartość dziesiętna: 2)

add dx, [c]    ; Dodaje wartość z pamięci pod adresem 'c' do wartości rejestru DX
                ; DX = DX + [c] = 02h + 03h = 05h (wartość dziesiętna: 5)

mov [y], dx    ; Przenosi wartość rejestru DX do pamięci pod adresem 'y'
                ; y = 05h (wartość dziesiętna: 5)

mov ax, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
                ; AX = 20h (wartość dziesiętna: 32)

mov bl, [y]    ; Przenosi wartość z pamięci pod adresem 'y' do rejestru BL
                ; BL = 05h (wartość dziesiętna: 5)

div bl         ; Dzieli wartość rejestru AX przez wartość rejestru BL
                ; AL = AX / BL = 32 / 5 = 06h (wartość dziesiętna: 6), AH = reszta z dzielenia = 02h (wartość dziesiętna: 2)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 20h       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 20h (wartość dziesiętna: 32)
b dw 02h       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
c dw 03h       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 03h (wartość dziesiętna: 3)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
