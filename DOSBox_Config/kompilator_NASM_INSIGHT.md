# Opis polecenia nasm

Polecenie `nasm` jest używane do kompilowania kodu źródłowego napisanego w języku asemblera za pomocą programu NASM (The Netwide Assembler).

Aby skompilować kod źródłowy, należy użyć następującej składni:

Opis poszczególnych elementów polecenia:
- `nasm` to nazwa programu, który jest używany do kompilowania kodu asemblera.
- `plik_asm.asm` to nazwa pliku źródłowego, który zawiera kod napisany w języku asemblera.
- `-o` to flaga, która wskazuje, że następny argument oznacza nazwę pliku wynikowego.
- `wynik.com` to nazwa pliku wynikowego, do którego zostanie skompilowany kod asemblera.

Ostatecznie, wykonanie polecenia `nasm plik_asm.asm -o wynik.com` spowoduje skompilowanie kodu źródłowego napisanego w języku asemblera zawartego w pliku `plik_asm.asm` i zapisanie wyniku w pliku wynikowym o nazwie `wynik.com`. Plik wynikowy będzie zawierał kod maszynowy, który może być uruchomiony na komputerze.

# Opis polecenia insight

Polecenie `insight` jest używane do uruchamiania graficznego narzędzia debuggera o nazwie Insight. Insight jest graficznym interfejsem użytkownika dla programu GDB (GNU Debugger), który jest narzędziem służącym do debugowania programów.

Aby uruchomić narzędzie Insight, należy użyć następującej składni:

Opis poszczególnych elementów polecenia:
- `insight` to nazwa programu, który jest używany do uruchomienia graficznego interfejsu użytkownika debuggera.
- `wynik.com` to nazwa pliku, który zawiera kod maszynowy programu, który chcemy zdebugować.

Ostatecznie, wykonanie polecenia `insight wynik.com` spowoduje uruchomienie programu Insight z plikiem wynikowym `wynik.com` jako argumentem wejściowym. Program Insight umożliwia interaktywne debugowanie kodu, umożliwiając np. zatrzymanie wykonywania programu w konkretnym punkcie, monitorowanie wartości zmiennych czy wykonywanie pojedynczych instrukcji kodu.

