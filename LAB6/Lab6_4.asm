; W tym kodzie jest wykonywane równanie ((b + c) + a) / b,
; gdzie a = 12, b = 3, c = 1.


org 100h        ; Ustala adres początkowy kodu na 100h

push word [b]   ; Umieszcza wartość z pamięci pod adresem 'b' na stosie
push word [c]   ; Umieszcza wartość z pamięci pod adresem 'c' na stosie

pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX
pop ax          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru AX
ADD ax, bx      ; Dodaje wartość rejestru BX do wartości rejestru AX

push ax         ; Umieszcza wartość rejestru AX na stosie

mov ax, [a]     ; Przenosi wartość z pamięci pod adresem 'a' do rejestru AX
mov dx, 0000    ; Wyzerowuje rejestr DX

pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX
DIV bx          ; Dzieli wartość rejestru AX przez wartość rejestru BX, wynik w AX, reszta w DX

mov ax, 00h     ; Ustawia wartość rejestru AX na 00h (kod operacji)
int 21h         ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 0Ch        ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 0Ch (wartość dziesiętna: 12)
b dw 03h        ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 03h (wartość dziesiętna: 3)
c dw 01h        ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 01h (wartość dziesiętna: 1)
