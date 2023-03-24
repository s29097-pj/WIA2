# Zadania do laboratorium 2 WIA2

1. Napisz program, który wyświetli na terminalu literkę `A` oraz `g`. - `21h/AX=02h`.
2. Napisz program, który wypisze na terminalu twoje `imię i nazwisko` - `21h/AH=09h`.
3. Napisz program, który ustawi kursor w lewym górnym rogu ekranu i napisze tam literkę `A` - `10h/AH=02h` i `21h/AX=02h`. 
W 10h ustawiamy pozycję w rejestrach DH i DL, nie ruszamy BH.
4. Napisz program, który odczyta znak, a następnie go wydrukuje - `int 21h/AH=01h`. 
Proponuję przed wydrukowaniem odczytanego znaku wydrukować jeszcze np. spację.
5. Napisz program, który wyświetli pośrodku ekranu literę `C`.

