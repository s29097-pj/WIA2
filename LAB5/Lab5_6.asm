; W tym kodzie jest wykonywane równanie (b / c) * a,
; gdzie a = 4, b = 10, c = 2.
; Wynik to (10 / 2) * 4 = 5 * 4 = 20 (wartość dziesiętna).


org 100h        ; Ustala adres początkowy kodu na 100h

mov ax, [b]    ; Przenosi wartość z pamięci pod adresem 'b' do rejestru AX
                ; AX = 0Ah (wartość dziesiętna: 10)

mov bl, [c]    ; Przenosi wartość z pamięci pod adresem 'c' do rejestru BL
                ; BL = 02h (wartość dziesiętna: 2)

div bl         ; Dzieli wartość rejestru AX przez wartość rejestru BL
                ; AL = AX / BL = 0Ah / 02h = 05h (wartość dziesiętna: 5), AH = reszta z dzielenia = 00h (wartość dziesiętna: 0)

mov bl, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru BL
                ; BL = 04h (wartość dziesiętna: 4)

mul bl         ; Mnoży wartość rejestru AX przez wartość rejestru BL
                ; AX = AX * BL = 05h * 04h = 14h (wartość dziesiętna: 20)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 04h       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 04h (wartość dziesiętna: 4)
b dw 0Ah       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 0Ah (wartość dziesiętna: 10)
c dw 02h       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
