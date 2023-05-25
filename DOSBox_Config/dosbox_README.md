# Instrukcja instalacji środowiska DOSBox

## Podstawy:

### 1. Pobranie i instalacja DOSBoxa

- Windows
plik .exe do pobrania - <https://sourceforge.net/projects/dosbox/files/latest/download>

- Ubuntu
```bash
sudo apt install dosbox
```

- MacOS
```
brew install dosbox
```

### 2. Pobrać należy:

- dosbox.zip
obraz dysku <https://mhyla.com/assets/WIA2/dosbox.zip>

- dosbox-0.74-3.conf
plik konfiguracyjny <https://mhyla.com/assets/WIA2/dosbox-0.74-3.conf>

### 3. Plik `dosbox.zip` 
- rozpakować i umieścić w łatwo dostępnej lokalizacji (np. `Z:\dosbox`) 
- skopiować ścieżkę rozpakowanego katalogu, który zawiera w sobie katalogi app i WIA2 (np. `Z:\dosbox\WIA2`).

### 4. Następnie należy odpalić w dowolnym edytorze tekstowym plik konfiguracyjny dosboxa:

- Windows
```cmd
DOSBox 0.74-3 Options
```

- Linux & MacOS
```bash
dosbox -editconf nano
```

- podmienić znajdującą się tam treść z treścią pobranego pliku `dosbox-0.74-3.conf`.

### 5. W pliku należy wskazac katalog, w którym znajduje się pobrany i rozpakowany katalog dosbox, bez []
```
mount c Z:\dosbox
c:
autoexec.bat
```

W pliku można ustawić też:
```
output=openglnb
```

Dokumentacja `Dosbox.conf`: <https://www.dosbox.com/wiki/Dosbox.conf>

### 6. Po uruchomieniu DOSBoxa wita nas okno z informacją, gdzie jest: 
- zamontowany dosbox: `Z:\dosbox`
- jak kompilować pliki: `nasm -o hello.com hello.asm`
- uruchamianie pliku: `hello.com`
- czyszczenie ekranu: `cls`