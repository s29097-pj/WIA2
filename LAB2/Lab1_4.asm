org 100h ; ustawia adres początkowy programu na 100h

; Wypisz tekst zachęty do wprowadzenia znaku
MOV AH, 09h ; ustawia wartość rejestru AH na 9h, co oznacza wywołanie funkcji wyświetlającej tekst w konsoli
MOV DX, prompt ; ustawia wartość rejestru DX na adres etykiety prompt, która zawiera tekst zachęty
INT 21h ; wywołanie przerwania 21h, które wyświetla tekst zachęty w konsoli

; Odczytaj znak z klawiatury
MOV AH, 01h ; ustawia wartość rejestru AH na 1h, co oznacza wywołanie funkcji odczytującej znak z klawiatury
INT 21h ; wywołanie przerwania 21h, które odczytuje znak z klawiatury i zapisuje go w rejestrze AL
MOV BL, AL ; zapisanie odczytanego znaku do rejestru BL

; Wypisz spację
MOV AH, 02h ; ustawia wartość rejestru AH na 2h, co oznacza wywołanie funkcji wyświetlającej znak w konsoli
MOV DL, ' ' ; ustawia wartość rejestru DL na ASCII spacji
INT 21h ; wywołanie przerwania 21h, które wyświetla znak spacji w konsoli

; Wypisz odczytany znak
MOV AH, 02h ; ustawia wartość rejestru AH na 2h, co oznacza wywołanie funkcji wyświetlającej znak w konsoli
MOV DL, BL ; ustawia wartość rejestru DL na zawartość rejestru BL, czyli odczytany wcześniej znak
INT 21h ; wywołanie przerwania 21h, które wyświetla odczytany znak w konsoli

; Zakończ program
MOV AH, 4Ch ; ustawia wartość rejestru AH na 4Ch, co oznacza wywołanie funkcji zakończenia programu z kodem wyjścia w rejestrze AL
INT 21h ; wywołanie przerwania 21h, które kończy program

prompt db 'Wprowadz znak: $' ; deklaracja etykiety prompt zawierającej tekst zachęty do wprowadzenia znaku