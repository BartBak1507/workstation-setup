# 🛠️ Workstation Setup Tools

Kompletny zestaw narzędzi do automatycznej konfiguracji stacji roboczych w firmie **zdi24**. Repozytorium zawiera różne wersje instalatora opartego na PowerShell oraz dokumentację obsługi.

---

## 📂 Struktura Projektu

```text
zdi24-workstation-setup/
│
├── INSTRUKCJA_OBSLUGI.txt                         
│
├── Wersja1.0/                                     # Podstawowa wersja instalacyjna
│   ├── Start_konfiguracji-ZDI24-2.exe             # Plik wykonawczy (kompilacja skryptu)
│   └── script/
│       └── setup_zdi24-2.ps1                      # Kod źródłowy PowerShell
│
├── Wersja2.0 Update all/                          # Wersja z funkcją aktualizacji wybranych aplikacji
│   ├── Start_konfiguracji-ZDI24.exe               # Plik wykonawczy
│   └── script/
│       └── setup_zdi24.ps1                        # Kod źródłowy z pętlą upgrade
│
└── README.md                                      # Główny opis projektu

📌 Opis wersji
🔹 Wersja 1.0
Skupia się na czystej instalacji niezbędnego oprogramowania. Idealna dla fabrycznie nowych komputerów, gdzie zależy nam na szybkim wgraniu bazy programów.

🔹 Wersja 2.0 (Update all)
Wersja rozszerzona, która po zakończeniu instalacji wykonuje precyzyjną aktualizację zainstalowanych pakietów. Zapewnia, że pracownik od pierwszego uruchomienia pracuje na najnowszych wersjach softu.

⚙️ Funkcjonalności
✅ Automatyczna Instalacja: 7-Zip, Google Chrome, Firefox, Adobe Reader, KeePass 2, Office 365.
✅ Inteligentny Upgrade (v2.0): Aktualizuje tylko aplikacje z listy firmowej via Winget.
✅ Brak Interakcji: Tryb --silent zapewnia instalację bez zbędnych okienek i pytań.
✅ Bezpieczeństwo: Skrypty automatycznie wymagają uprawnień Administratora.

▶️ Sposób użycia
Wejdź do folderu wybranej wersji (np. Wersja2.0 Update all).
Uruchom plik Start.exe.
Poczekaj na zakończenie operacji w oknie konsoli.
W przypadku edycji kodu, pliki źródłowe .ps1 znajdują się w podfolderach script/.

🛠️ Technologie
PowerShell (Logika skryptów)
Winget (Menedżer pakietów Windows)
PS2EXE (Kompilacja skryptów do formatu .exe dla wygody użytkownika)

🧠 Dlaczego taka struktura?
Struktura została zaprojektowana tak, aby oddzielić kod źródłowy od plików wykonywalnych, co ułatwia zarządzanie wersjami. Pliki .exe pozwalają osobom nietechnicznym na uruchomienie instalacji jednym kliknięciem, bez konieczności wpisywania komend w terminalu.

👨‍💻 Autor
Bartosz Bąk

GitHub: https://github.com/BartBak1507
