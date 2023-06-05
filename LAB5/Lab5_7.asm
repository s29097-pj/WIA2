; W tym kodzie jest wykonywane równanie a * a + (b + b) + c,
; gdzie a = 4, b = 10, c = 2.
; Wynik to 4 * 4 + (10 + 10) + 2 = 16 + 20 + 2 = 38 (wartość dziesiętna).


org 100h        ; Ustala adres początkowy kodu na 100h

mov ax, [a]    ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
                ; AX = 04h (wartość dziesiętna: 4)

mul ax         ; Mnoży wartość rejestru AX przez wartość rejestru AX
                ; AX = AX * AX = 04h * 04h = 10h (wartość dziesiętna: 16)

mov bx, [b]    ; Przenosi wartość z pamięci pod adresem 'b' do rejestru BX
                ; BX = 0Ah (wartość dziesiętna: 10)

add bx, bx     ; Dodaje wartość rejestru BX do samego siebie
                ; BX = BX + BX = 0Ah + 0Ah = 14h (wartość dziesiętna: 20)

mov cx, [c]    ; Przenosi wartość z pamięci pod adresem 'c' do rejestru CX
                ; CX = 02h (wartość dziesiętna: 2)

add ax, bx     ; Dodaje wartość rejestru BX do wartości rejestru AX
                ; AX = AX + BX = 10h + 14h = 24h (wartość dziesiętna: 36)

add ax, cx     ; Dodaje wartość rejestru CX do wartości rejestru AX
                ; AX = AX + CX = 24h + 02h = 26h (wartość dziesiętna: 38)

mov [y], ax    ; Przenosi wartość rejestru AX do pamięci pod adresem 'y'
                ; y = 26h (wartość dziesiętna: 38)

mov ah, 00h    ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h        ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 04h       ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 04h (wartość dziesiętna: 4)
b dw 0Ah       ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 0Ah (wartość dziesiętna: 10)
c dw 02h       ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 02h (wartość dziesiętna: 2)
y dw 00h       ; Definiuje zmienną 'y' jako dwubajtową (word) o wartości 00h (wartość dziesiętna: 0)
