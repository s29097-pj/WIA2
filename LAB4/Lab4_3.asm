; Program przyjmuje znaki od użytkownika i wypisuje je na ekranie,
; ale jeśli wprowadzony zostanie znak Q to się zakończy.

; Ustaw adres początku programu na 100h
org 100h
	
; Sekcja startowa
start:

	; Nowa linia
	mov ah, 02h
	mov dl, 0Dh
	int 21h
	mov dl, 0Ah
	int 21h

	; Wyświetl wiadomość o wprowadzeniu znaku
	mov ah, 09h ; Funkcja 9h interrupcji 21h służy do wyświetlania tekstu na ekranie.
	mov dx, msg ; W tym przypadku ładujemy do rejestru DX adres wiadomości do wyświetlenia.
	int 21h ; Wywołanie przerwania.

	; Pobierz znak od użytkownika
	mov ah, 01h ; Funkcja 01h interrupcji 21h służy do pobierania znaku z klawiatury.
	int 21h ; Wywołanie przerwania.

	; Skocz do etykiety "porownaj"
	jmp porownaj

; Sekcja porównywania
porownaj:
	; Porównaj wprowadzony znak z literą "Q"
	cmp al, 'Q'
	jne drukuj ; Jeśli wprowadzony znak nie jest równy "Q", skocz do etykiety "drukuj"
	je koniec ; W przeciwnym razie skocz do etykiety "koniec"

; Sekcja wyświetlania znaku
drukuj: 
	; Przesuń wprowadzony znak do rejestru CX
	mov cx, ax

	; Nowa linia
	mov ah, 02h ; Funkcja 02h interrupcji 21h służy do wypisywania znaków ASCII na ekranie.
	mov dl, 0Dh ; Kod ASCII dla znaku CR (carriage return)
	int 21h ; Wywołanie przerwania.
	mov dl, 0Ah ; Kod ASCII dla znaku LF (line feed)
	int 21h ; Wywołanie przerwania.

	; Wyświetl wiadomość "Podano znak: "
	mov ah, 09h ; Funkcja 9h interrupcji 21h służy do wyświetlania tekstu na ekranie.
	mov dx, result ; W tym przypadku ładujemy do rejestru DX adres wiadomości do wyświetlenia.
	int 21h ; Wywołanie przerwania.

	; Wyświetl wprowadzony znak
	mov ah, 02h ; Funkcja 02h interrupcji 21h służy do wypisywania znaków ASCII na ekranie.
	mov dl, cl ; Ładujemy do rejestru DL wartość wprowadzonego znaku z rejestru CX.
	int 21h ; Wywołanie przerwania.

	; Skocz do etykiety "start"
	jmp start

; Sekcja końcowa
koniec:
	; Nowa linia
	mov ah, 02h ; ustawienie kodu funkcji 02h przerwania 21h - drukowanie znaku
	mov dl, 0Dh ; przesunięcie kursora do początku linii
	int 21h ; wykonanie przerwania 21h
	mov dl, 0Ah ; przesunięcie kursora do kolejnej linii
	int 21h ; wykonanie przerwania 21h

	; Wyjście z programu
	mov ah, 4Ch ; ustawienie kodu funkcji 4Ch przerwania 21h - zakończenie programu
	int 21h ; wykonanie przerwania 21h

; Deklaracja stałych
	msg db "Podaj znak (Uwaga: znak Q konczy program): $"
	result db "Podano znak: $"