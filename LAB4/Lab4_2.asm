; Program rozpoznaje wielkie i małe litery
; Wielkie litery mają kody ASCII 41h-5Ah, a małe 61h-7Ah. 
; Program drukuje informację zwrotną, np. „wielka litera”, „mala litera”, „error”

org 100h

section .data
	wprowadz_msg db 0ah, "Wprowadz jeden znak: $" ; wiadomość zachęcająca użytkownika do wprowadzenia znaku
	wielka_litera_msg db "Wielka litera$", 0 ; wiadomość wyświetlana, gdy wprowadzony znak jest wielką literą
	mala_litera_msg db "Mala litera$", 0 ; wiadomość wyświetlana, gdy wprowadzony znak jest małą literą
	error_msg db "Error - to nie jest litera$", 0 ; wiadomość wyświetlana, gdy wprowadzony znak nie jest literą


section .text
	; Wyświetl wiadomość o wprowadzeniu znaku
	mov ah, 09h ; przerwanie 21h służy do wyświetlania tekstu w konsoli
	mov dx, wprowadz_msg ; przechowanie adresu wiadomości w rejestrze DX
	int 21h ; wywołanie przerwania 21h, które wyświetla wiadomość na ekranie

	; Pobierz znak od użytkownika
	mov ah, 01h ; przerwanie 21h służy do odczytu znaku z klawiatury
	int 21h ; wprowadzony znak jest przechowywany w rejestrze AL

	; Porównaj znak z kodami ASCII dla wielkich i małych liter
	cmp al, 41h ; porównanie wprowadzonego znaku z kodem ASCII dla litery A
	jb nie_litera ; skok do sekcji nie_litera, jeśli wprowadzony znak ma kod mniejszy niż 41h
	cmp al, 5Ah ; porównanie wprowadzonego znaku z kodem ASCII dla litery Z
	jbe wielka_litera ; skok do sekcji wielka_litera, jeśli wprowadzony znak ma kod między 41h a 5Ah
	cmp al, 61h ; porównanie wprowadzonego znaku z kodem ASCII dla litery a
	jb nie_litera ; skok do sekcji nie_litera, jeśli wprowadzony znak ma kod mniejszy niż 61h
	cmp al, 7Ah ; porównanie wprowadzonego znaku z kodem ASCII dla litery z
	jbe mala_litera ; skok do sekcji mala_litera, jeśli wprowadzony znak ma kod między 61h a 7Ah
	jmp nie_litera ; w przeciwnym razie skok do sekcji nie_litera

wielka_litera:
	; Wielka litera
	mov ah, 02h ; przerwanie 21h służy do wyświetlania znaku w konsoli
	mov dl, 0Dh ; kod ASCII dla znaku powrotu karetki
	int 21h ; wywołanie przerwania 21h, co skutkuje wyświetleniem znaku powrotu 
	
	; Przygotowanie do wyświetlenia znaku nowej linii
	mov dl, 0Ah ; kod ASCII dla znaku nowej linii (line feed)
	int 21h ; wywołanie przerwania 21h, co skutkuje wyświetleniem znaku nowej linii w konsoli
	
	; Wyświetlenie informacji o wielkiej literze
	mov ah, 09h ; załadowanie do rejestru AH wartości 09h, co oznacza, że następuje użycie przerwania 21h do wyświetlenia łańcucha znaków w konsoli
	mov dx, wielka_litera_msg ; załadowanie do rejestru DX adresu łańcucha znaków przechowującego informację o tym, że podany znak jest wielką literą
	int 21h ; wywołanie przerwania 21h, co skutkuje wyświetleniem łańcucha znaków w konsoli

	; Skok do końca programu
	jmp koniec ; wykonanie skoku do etykiety "koniec"

mala_litera:
	; Znak jest małą literą
	; Wypisanie znaku, który został podany przez użytkownika
	mov ah, 02h ; załadowanie do rejestru AH wartości 02h, co oznacza, że następuje użycie przerwania 21h do wyświetlenia znaku w konsoli
	mov dl, 0Dh ; kod ASCII dla znaku powrotu karetki
	int 21h ; wywołanie przerwania 21h, co skutkuje wyświetleniem znaku powrotu karetki w konsoli
	mov dl, 0Ah ; kod ASCII dla znaku nowej linii
	int 21h ; wywołanie przerwania 21h, co skutkuje wyświetleniem znaku nowej linii w konsoli
	
	; Wypisanie informacji o tym, że podany znak jest małą literą
	mov ah, 09h ; załadowanie do rejestru AH wartości 09h, co oznacza, że następuje użycie przerwania 21h do wyświetlenia łańcucha znaków w konsoli
	mov dx, mala_litera_msg ; załadowanie do rejestru
	int 21h; Wywołanie przerwania 21h, aby wyświetlić znak
	
	; Skocz do końca programu
	jmp koniec ; wykonanie skoku do etykiety "koniec"

	nie_litera:
	; Znak nie jest literą, więc wyświetl informację o błędzie
	mov ah, 02h ; Przygotowanie przerwania 21h do wyświetlenia znaku w konsoli
	mov dl, 0Dh ; Kod ASCII dla znaku powrotu karetki
	int 21h ; Wywołanie przerwania 21h, aby wyświetlić znak
	
	mov dl, 0Ah ; Kod ASCII dla znaku nowej linii
	int 21h ; Wywołanie przerwania 21h, aby wyświetlić znak nowej linii

	; Wypisz informację o błędzie
	mov ah, 09h ; Przygotowanie przerwania 21h do wyświetlenia łańcucha znaków w konsoli
	mov dx, error_msg ; Wczytanie adresu łańcucha znaków informacji o błędzie
	int 21h ; Wywołanie przerwania 21h, aby wyświetlić informację o błędzie

koniec:
	; Wypisz znak nowej linii
	mov ah, 02h ; Przygotowanie przerwania 21h do wyświetlenia znaku w konsoli
	mov dl, 0Dh ; Kod ASCII dla znaku powrotu karetki
	int 21h ; Wywołanie przerwania 21h, aby wyświetlić znak
	
	mov dl, 0Ah ; Kod ASCII dla znaku nowej linii
	int 21h ; Wywołanie przerwania 21h, aby wyświetlić znak nowej linii

	; Wyjście z programu
	mov ah, 4Ch ; Przygotowanie przerwania 21h do zakończenia programu
	int 21h ; Wywołanie przerwania 21h, aby zakończyć program
