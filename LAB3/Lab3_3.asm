org 100h				; dyrektywa, która informuje assembler, 
						; że początek programu znajduje się na adresie 100h 
						; (czyli 256 w systemie dziesiętnym), 
						; który jest podstawowym adresem dla programów DOS

; Wyświetlenie wiadomości
mov ah, 09h				; Wybierz funkcję 9h - wyświetlenie stringa
mov dx, msg				; Adres początku stringa "Enter a string: $"
int 21h					; Wywołaj procedurę przerwania 21h

; Wczytanie ciągu znaków do bufora
mov ah, 0Ah				; Wybierz funkcję 0Ah - wczytanie ciągu znaków
mov dx, buffer			; Adres początku bufora
int 21h					; Wywołaj procedurę przerwania 21h

; Wyswietlenie dwóch znaków nowej linii
mov ah, 02h				; Wybierz funkcję 02h - wyświetlenie znaku
mov dl, 0Dh				; Ustaw wartość rejestru dl na kod ASCII nowego wiersza CR
int 21h					; Wywołaj procedurę przerwania 21h
mov dl, 0Ah				; Ustaw wartość rejestru dl na kod ASCII nowej linii LF
int 21h					; Wywołaj procedurę przerwania 21h

; Wyświetlenie tekstu w nowej linii
mov ah, 9				; Wybierz funkcję 9h - wyświetlenie stringa
mov dx, msg_final_nl	; Adres początku stringa "You entered a string = $"
int 21h					; Wywołaj procedurę przerwania 21h

; Przetworzenie i wyświetlenie ciągu znaków
mov bx, buffer+2		; Ustaw wskaźnik bx na początek ciągu znaków wpisanego przez użytkownika
mov cl, [bx-1]			; Przeczytaj długość ciągu znaków do rejestru cl
add bx, cx				; Przesuń wskaźnik bx na koniec ciągu znaków
mov byte [bx], '$'		; Dodaj znak dolara na końcu ciągu znaków
sub bx, cx				; Cofnij wskaźnik bx na początek ciągu znaków
mov ah, 09h				; Wybierz funkcję 9h - wyświetlenie stringa
mov dx, bx				; Wskaźnik dx wskazuje na początek ciągu znaków wpisanego przez użytkownika
int 21h					; Wywołaj procedurę przerwania 21h

; Wyświetlenie nowych linii przed "You entered a string: " oraz "Length of string: "
mov ah, 02h				; Wybierz funkcję 02h - wyświetlenie znaku
mov dl, 0Dh				; Ustaw wartość rejestru dl na kod ASCII nowego wiersza CR
int 21h					; Wywołaj procedurę przerwania 21h
mov dl, 0Ah				; Ustaw wartość rejestru dl na kod ASCII nowej linii LF
int 21h					; Wywołaj procedurę przerwania 21h

; wyświetlenie tekstu "Length of string = "
mov ah, 09h				; inicjacja funkcji 09h - wyświetlenie stringa
mov dx, length_msg		; adres stringa "Length of string = "
int 21h					; wywołanie przerwania 21h, wyświetlenie stringa

; wydrukowanie długości stringa
mov ah, 02h				; inicjacja funkcji 02h - wyświetlenie znaku ASCII
mov dl, [bx-1]			; długość stringa, która została zapisana w buforze w poprzedniej instrukcji
add dl, '0'				; konwersja na kod ASCII
int 21h					; wywołanie przerwania 21h, wyświetlenie znaku ASCII

; wyświetlenie znaków nowej linii
mov ah, 02h				; inicjacja funkcji 02h - wyświetlenie znaku ASCII
mov dl, 0Dh				; kod ASCII dla pierwszego znaku nowej linii
int 21h					; wywołanie przerwania 21h, wyświetlenie znaku ASCII
mov dl, 0Ah				; kod ASCII dla drugiego znaku nowej linii
int 21h					; wywołanie przerwania 21h, wyświetlenie znaku ASCII

; zakonczenie programu
mov ah, 4Ch				; inicjacja funkcji 4Ch - zakończenie programu
int 21h					; wywołanie przerwania 21h, zakończenie programu

msg db 'Enter a string: $'
msg_final_nl db 0Dh, 0Ah, 'You entered a string = $'
length_msg db 0Dh, 0Ah, 'Length of string = $'
buffer db 255, 0		; bufor dla wczytanego ciągu znaków i znaku końca linii
