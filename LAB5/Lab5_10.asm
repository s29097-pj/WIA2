; W tym kodzie jest wykonywane równanie ((a / 2) + b / 3) + c / 4,
; gdzie a = 10, b = 9, c = 12, a y przechowuje wynik równania.


org 100h        ; Ustala adres początkowy kodu na 100h

mov ax, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
                ; AX = 0Ah (wartość dziesiętna: 10)

mov bl, 02h    ; Przenosi wartość 02h do rejestru BL
                ; BL = 02h (wartość dziesiętna: 2)

div bl         ; Dzieli wartość rejestru AX przez wartość rejestru BL
                ; AL = AX / BL = 0Ah / 02h = 05h (wartość dziesiętna: 5), AH = reszta z dzielenia = 00h (wartość dziesiętna: 0)

mov [y], ax    ; Przenosi wartość rejestru AX do pamięci pod adresem 'y'
                ; y = 05h (wartość dziesiętna: 5)

mov ax, [b]    ; Przenosi wartość z pamięci pod adresem 'b' do rejestru AX
                ; AX = 09h (wartość dziesiętna: 9)

mov bl, 03h    ; Przenosi wartość 03h do rejestru BL
                ; BL = 03h (wartość dziesiętna: 3)

div bl         ; Dzieli wartość rejestru AX przez wartość rejestru BL
                ; AL = AX / BL = 09h / 03h = 03h (wartość dziesiętna: 3), AH = reszta z dzielenia = 00h (wartość dziesiętna: 0)

add [y], ax    ; Dodaje wartość rejestru AX do wartości w pamięci pod adresem 'y'
                ; y = 05h + 03h = 08h (wartość dziesiętna: 8)

mov ax, [c]    ; Przenosi wartość z pamięci pod adresem 'c' do rejestru AX
                ; AX = 0Ch (wartość dziesiętna: 12)

mov bl, 04h    ; Przenosi wartość 04h do rejestru BL
                ; BL = 04h (wartość dziesiętna: 4)

div bl         ; Dzieli wartość rejestru AX przez wartość rejestru BL
                ; AL = AX / BL = 0Ch / 04h = 03h (wartość dziesiętna: 3), AH = reszta z dzielenia = 00h (wartość dziesiętna: 0)

add [y], ax    ; Dodaje wartość rejestru AX do wartości w pamięci pod adresem 'y'
                ; y = 08h + 03h = 0Bh (wartość dziesiętna: 11)

mov ax, [y]    ; Przenosi wartość z pamięci pod adresem 'y' do rejestru AX
                ; AX = 0Bh (wartość dziesiętna: 11)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 0Ah       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 0Ah (wartość dziesiętna: 10)
b dw 09h       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 09h (wartość dziesiętna: 9)
c dw 0Ch       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 0Ch (wartość dziesiętna: 12)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
