org 100h ; adres początkowy programu

section .data ; sekcja danych
	buffer db 20 ; deklaracja bufora o długości 20 bajtów				
	input_msg db 0Ah, "Enter a string: $" ; deklaracja wiadomości proszącej o wpisanie ciągu znaków		
	output_msg db 0Ah, "Ch" ,"Characters up to third position are: $" ; deklaracja wiadomości z literami aż do trzeciej pozycji	

section .text ; sekcja kodu
	global _start ; deklaracja etykiety globalnej _start

_start:
	; wyświetl wiadomość proszącą o wpisanie ciągu znaków
	mov ah, 09h ; ustawienie wartości 09h w rejestrze ah, odpowiadającym za działanie funkcji wyjścia DOS
	mov dx, input_msg ; załadowanie adresu wiadomości do rejestru dx
	int 21h ; wywołanie funkcji 21h DOS

	; wczytaj ciąg znaków do bufora
	mov ah, 0Ah ; ustawienie wartości 0Ah w rejestrze ah, odpowiadającym za działanie funkcji wejścia DOS
	mov dx, buffer ; załadowanie adresu bufora do rejestru dx
	int 21h ; wywołanie funkcji 21h DOS
	
	; dodaj znak nowej linii na końcu bufora
	mov byte [buffer+20], 0Dh
	mov byte [buffer+21], 0Ah

	; wyświetl wiadomość z literami aż do trzeciej pozycji
	mov ah, 09h ; ustawienie wartości 09h w rejestrze ah, odpowiadającym za działanie funkcji wyjścia DOS
	mov dx, output_msg ; załadowanie adresu wiadomości do rejestru dx
	int 21h ; wywołanie funkcji 21h DOS

	; wyświetl litery ciągu aż do trzeciej pozycji
	mov cx, 3 ; ustawienie wartości licznika cx na 3
	mov si, buffer+2 ; załadowanie adresu trzeciego znaku w buforze do rejestru si
display_loop:
	mov dl, [si] ; wczytanie znaku z bufora do rejestru dl
	mov ah, 02h ; ustawienie wartości 02h w rejestrze ah, odpowiadającym za działanie funkcji wyjścia DOS
	int 21h ; wywołanie funkcji 21h DOS, wypisującej znak z rejestru dl na ekranie
	inc si ; zwiększenie wskaźnika na kolejny znak
	loop display_loop ; powtarzaj aż do wyświetlenia trzeciego znaku

	; zakończ program
	mov ah, 4Ch ; ustawienie wartości 4Ch w rejestrze ah, odpowiadającym za działanie funkcji DOS zakończenia programu
	mov al, 0 ; ustawienie wartości 0 w rejestrze al
	int 21h ; wywołanie funkcji 21h DOS