; W tym kodzie jest wykonywane równanie ((2 * c) + (2 * a) + (2 * b) - b),
; gdzie a = 1, b = 3, c = 5.


org 100h        ; Ustala adres początkowy kodu na 100h

push 2          ; Umieszcza wartość 2 na stosie
push word [c]   ; Umieszcza wartość z pamięci pod adresem 'c' na stosie

pop ax          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru AX
pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX

mul bx          ; Mnoży wartość rejestru AX przez wartość rejestru BX

push ax         ; Umieszcza wynik mnożenia na stosie

push 2          ; Umieszcza wartość 2 na stosie
push word [a]   ; Umieszcza wartość z pamięci pod adresem 'a' na stosie

pop ax          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru AX
pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX

mul bx          ; Mnoży wartość rejestru AX przez wartość rejestru BX

push ax         ; Umieszcza wynik mnożenia na stosie

push 2          ; Umieszcza wartość 2 na stosie
push word [b]   ; Umieszcza wartość z pamięci pod adresem 'b' na stosie

pop ax          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru AX
pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX

mul bx          ; Mnoży wartość rejestru AX przez wartość rejestru BX

push ax         ; Umieszcza wynik mnożenia na stosie

pop ax          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru AX
pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX

ADD ax, bx      ; Dodaje wartość rejestru BX do wartości rejestru AX

pop bx          ; Zdejmuje wartość ze stosu i przenosi ją do rejestru BX

SUB ax, bx      ; Odejmuje wartość rejestru BX od wartości rejestru AX

mov ah, 00h     ; Ustawia wartość rejestru AH na 00h (kod operacji)
int 21h         ; Wywołuje przerwanie 21h (int 21h) - wykonuje operację systemową

a dw 01h        ; Definiuje zmienną 'a' jako dwubajtową (word) o wartości 01h (wartość dziesiętna: 1)
b dw 03h        ; Definiuje zmienną 'b' jako dwubajtową (word) o wartości 03h (wartość dziesiętna: 3)
c dw 05h        ; Definiuje zmienną 'c' jako dwubajtową (word) o wartości 05h (wartość dziesiętna: 5)
