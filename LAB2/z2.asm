org 100h		; ustawia punkt początkowy programu na adres 100h przy pomocy dyrektywy "org 100h"

MOV AH, 09h		; ładuje wartość 09h do rejestru AH, funkcja przerwania 21h ma wypisać na ekranie łańcuch znaków
MOV DX, string	; ładuje adres etykiety "string" do rejestru DX, który wskazuje na łańcuch znaków do wyświetlenia
INT 21h			; wywołuje przerwanie 21h, które wyświetla zawartość łańcucha "string" na ekranie

MOV AH, 00h		; ładuje wartość 00h do rejestru AH, funkcja 21h ma odczytać znak z klawiatury
INT 21h			; wywołuje przerwanie 21h, które oczekuje na wprowadzenie znaku z klawiatury i zapisuje w rejestrze AL

string db "Michal Malolepszy $" ; definiuje łańcuch znaków z imieniem i nazwiskiem, zakończony znakiem końca łańcucha ($) 