org 100h ; wymagane przez plik .COM

MOV AH, 02h ; ustaw kod funkcji 02h w rejestrze AH
MOV DL, 'A' ; umieść kod ASCII litery 'A' w rejestrze DL
INT 21h ; wywołaj przerwanie 21h, aby wyświetlić literę 'A'

MOV AH, 02h ; ustaw kod funkcji 02h w rejestrze AH 
MOV DL, 'g' ; umieść kod funkcji02h w rejestrze AH
INT 21h ; wywołaj przerwanie 21h, aby wyświetlić literę 'g'

MOV AH, 00h ; zakończenie programu
INT 21h ; wywołujemy przerwanie wyjścia