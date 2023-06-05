; W tym kodzie jest wykonywane równanie (a / b) + c,
; gdzie a = 3, b = 1, c = 5.


org 100h        ; Ustala adres początkowy kodu na 100h

push word [a]   ; Umieszcza wartość z pamięci pod adresem 'a' na stosie
push word [b]   ; Umieszcza wartość z pamięci pod adresem 'b' na stosie

mov dx, 0000    ; Wyzerowuje rejestr DX

pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX
pop ax          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru AX

div bx          ; Dzieli wartość rejestru AX przez wartość rejestru BX, wynik w AX, reszta w DX

mov bx, [c]     ; Przenosi wartość z pamięci pod adresem 'c' do rejestru BX
add ax, bx      ; Dodaje wartość rejestru BX do wartości rejestru AX

mov ax, 00h     ; Ustawia wartość rejestru AX na 00h (kod operacji)
int 21h         ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 03h        ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 03h (wartość dziesiętna: 3)
b dw 01h        ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 01h (wartość dziesiętna: 1)
c dw 05h        ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 05h (wartość dziesiętna: 5)
