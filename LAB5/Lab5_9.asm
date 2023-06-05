; W tym kodzie jest wykonywane równanie (a / c) + b + (a * a),
; gdzie a = 4, b = 8, c = 1, a y przechowuje wynik równania.


org 100h        ; Ustala adres początkowy kodu na 100h

mov ax, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
                ; AX = 04h (wartość dziesiętna: 4)

mov bl, [c]    ; Przenosi wartość z pamięci pod adresem 'c' do rejestru BL
                ; BL = 01h (wartość dziesiętna: 1)

div bl         ; Dzieli wartość rejestru AX przez wartość rejestru BL
                ; AL = AX / BL = 04h / 01h = 04h (wartość dziesiętna: 4), AH = reszta z dzielenia = 00h (wartość dziesiętna: 0)

add ax, [b]    ; Dodaje wartość z pamięci pod adresem 'b' do wartości rejestru AX
                ; AX = AX + [b] = 04h + 08h = 0Ch (wartość dziesiętna: 12)

mov bl, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru BL
                ; BL = 04h (wartość dziesiętna: 4)

mul bl         ; Mnoży wartość rejestru AX przez wartość rejestru BL
                ; AX = AX * BL = 0Ch * 04h = 030h (wartość dziesiętna: 48)

mov [y], ax    ; Przenosi wartość rejestru AX do pamięci pod adresem 'y'
                ; y = 030h (wartość dziesiętna: 48)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 04h       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 04h (wartość dziesiętna: 4)
b dw 08h       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 08h (wartość dziesiętna: 8)
c dw 01h       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 01h (wartość dziesiętna: 1)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
