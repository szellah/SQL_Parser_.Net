# SQL Parser .Net
Jest to mały projekt, który powstał na potrzeby więskzego proejktu "aidc_server". Projekt to powstał jako coś co szybko wypełni bazę danych, w róznymi obiekatami przypisanyimi do róznych pokoji w sposób pseudo losowy korzystając z obiektu Random i programowania Obiektowego.

## Nakreślenie problemu
Instytut badawczy, skłądający się z dwóch budynków, każdy po dwa piętra, po dwa pokoje, w tym jeden magazyn, potrzebuje oprogramowania któe pozwoli na szybką i wygodną inwentaryzaję. Oprogramowwanie pozawala na przypisywanie lokalizacji do artykółu (np. Pokój 103 do Myszki logitech). Żeby móc testować daną aplikację potrzbne jest dostatecznie dużo danych, w formie rekordów bazy danych, specyfikujących że w każdym pokoju znajduje się odpowiednia liczba sprzętu kompouterowego, o różnych modelach oraz różnych markach.

## Rozwiazanie
Projekt Obiektowego przedstawienia instytutu (obu budynków) jako listy pokoji. Każdy pokój posiada również listę artykółów wewnątrz siebię. Utylizacja modyfikacji metody ToString:

- Dla 'Article' wyświetla tablicę wartości w formie pozwalającej na wstawienie jej do zapytania INSERT SQL
- Dla 'Room' wyświetla wszystkie artykuły jako string
- Dla 'Database' wyświetla pełne zapyutanie INSERT INTO, wraz ze wszystkimi artykułami we wszystkich pokojach.

Dodatkowo 'Database' posiada metodę która po konfiguracji hosta mySQL (w moim przypadku XAMPP), zapisze do niego zapytanie.

## Pomysły na rozwój projektu
- Przeniesienie całej struktury klas do biblioteki .dll
- Dodanie kompleksowej obsługi wyjątków
- Rozszerzenie możliwości klasy 'Scatterer' o rozrzut równomierny
- Stworzenie modułu wciągającego listę różnych artykółów, i pokoji po których można je rozrzucić z pliku csv przy pomocy Strumieni
- Utworzenie graficznego UI w ASP.NET lub WPF