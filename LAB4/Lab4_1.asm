; Program przyjmuje od użytkownika jeden znak
; Jesli znak będzie wiekszy niz '_' (5Fh), to wydrukuje '>', jesli mniejszy to '<', a jesli równy to '='

org 100h

section .data
    wprowadz db 'Wprowadz jeden znak: $'

section .text
    mov ah, 09h ; wyswietl wprowadzanie tekstu
    mov dx, wprowadz ; adres wprowadzania tekstu
    int 21h

	mov ah, 01h ; wczytaj jeden znak
	int 21h

	mov bl, 5Fh ; ustaw wartosc graniczna
	cmp al, bl ; porownaj z granica
	jg wiekszy ; skocz, gdy jest wiekszy
	jl mniejszy ; skocz, gdy jest mniejszy
	
	mov ah, 02h ; w przeciwnym razie wydrukuj znak ==
	mov dl, '='
	int 21h
	jmp koniec ; skocz do konca programu

wiekszy:
	mov ah, 02h ; wydrukuj > gdy jest wiekszy
	mov dl, '>'
	int 21h
	jmp koniec ; skocz do konca programu

mniejszy:
	mov ah, 02h ; wydrukuj < gdy jest mniejszy
	mov dl, '<'
	int 21h

koniec:
	ret