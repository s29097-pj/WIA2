# Zadania do laboratorium 3 WIA2

**1.** Za pomocą przerwania `int 21h/AH=0Ah` wczytaj ciąg znaków, a następnie wydrukuj trzeci znak tego stringa. 
> To przerwanie w momencie wywołania odczytuje z pamięci 1 bajt z podanego adresu i pozwala na wprowadzenie tylu znaków, jaką wartość tam znajdzie. 
> Po wprowadzeniu stringa na drugim bajcie znajdzie się długość wprowadzonego ciągu znaków, pierwsza litera tego ciągu będzie dopiero na bajcie trzecim.

**2.** Wydrukuj stringa (może być zdefiniowany w kodzie), znak nowej linii `(0A0Dh)`, oraz tego samego stringa, ale do trzeciego znaku. 
> Przerwanie `int 21h/AH=09h` drukuje stringa zaczynając od umieszczonego w `DX` adresu, aż do napotkania znaku `$`, czyli wystarczy po trzecim znaku umieścić w pamięci `$` i załatwione.

**3.** Napisz program, który przyjmie stringa od użytkownika `(int 21h/AH=0Ah)`, przesunie gdzieś kursor albo wydrukuje nową linię i wydrukuje tego stringa na terminalu. 
> Program ma wykryć, jak długi był przyjęty od użytkownika string i postawić na jego końcu `$`.