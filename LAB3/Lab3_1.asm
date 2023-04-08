org 100h				; adres rozpoczęcia programu

section .data			; sekcja danych
	buffer db 20		; bufor o długości 20 znaków
	input_msg db 0Ah, "Enter a string: $"		; wiadomość prosząca o wpisanie ciągu znaków
	output_msg db 0Ah, "Third character is: $"	; wiadomość wyświetlająca trzeci znak z ciągu

section .text			; sekcja kodu
	global _start		; wskazanie na start programu

_start:
	; wyświetl wiadomość proszącą o wpisanie ciągu znaków
	mov ah, 09h			; wskazanie na funkcję 09h, która wypisuje tekst na ekranie
	mov dx, input_msg	; wskazanie na wiadomość "Enter a string: $", która jest zapisana w sekcji .data
	int 21h				; wywołanie procedury przerwania 21h

	; wczytaj ciąg znaków do bufora
	mov ah, 0Ah			; wskazanie na funkcję 0Ah, która odczytuje ciąg znaków z wejścia i zapisuje go do bufora
	mov dx, buffer		; wskazanie na bufor, gdzie ma zostać zapisany odczytany ciąg
	int 21h				; wywołanie procedury przerwania 21h

	; pobierz trzeci znak z bufora
	mov al, [buffer+4]	; wskazanie na trzeci znak w buforze, który znajduje się na 4 miejscu od początku bufora i zapisanie go do rejestru al

	; wyświetl wiadomość z trzecim znakiem
	mov ah, 09h			; wskazanie na funkcję 09h, która wypisuje tekst na ekranie
	mov dx, output_msg	; wskazanie na wiadomość "Third character is: $", która jest zapisana w sekcji .data
	int 21h				; wywołanie procedury przerwania 21h

	; wyświetl trzeci znak
	mov dl, al			; wskazanie na rejest al, który przechowuje trzeci znak ciągu
	mov ah, 02h			; wskazanie na funkcję 02h, która wypisuje pojedynczy znak na ekranie
	int 21h				; wywołanie procedury przerwania 21h

	; zakończ program
	mov ah, 4Ch			; wskazanie na funkcję 4Ch, która kończy działanie programu
	mov al, 0			; ustawienie kodu powrotu na 0
	int 21h				; wywołanie procedury przerwania 21h

