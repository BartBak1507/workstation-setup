# =================================================================================
# SKRYPT INSTALACYJNY DLA FIRMY zdi24
# Cel: Automatyczna instalacja pakietu biurowego i narzędzi
# Autor: Bartosz Bąk
# =================================================================================

# 1. Sprawdzenie uprawnień Administratora
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "BŁĄD: Musisz uruchomić ten skrypt jako Administrator!" -ForegroundColor Red
    Pause
    Exit
}

Write-Host "--- ROZPOCZYNAM KONFIGURACJĘ SYSTEMU DLA zdi24 ---" -ForegroundColor Cyan

# 2. Lista aplikacji do zainstalowania przez Winget
$apps = @(
    "7zip.7zip",
    "Google.Chrome",
    "Mozilla.Firefox",
    "Adobe.Acrobat.Reader.64-bit",
    "DominikReichl.KeePass", # KeePass 2 (oficjalna wersja)
    "Microsoft.Office" # Office 365
)

Write-Host "Instalowanie aplikacji..." -ForegroundColor Yellow

foreach ($app in $apps) {
    Write-Host "Przetwarzanie: $app" -ForegroundColor Cyan
    winget install --id $app --exact --silent --accept-source-agreements --accept-package-agreements
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Sukces: $app zainstalowany." -ForegroundColor Green
    } else {
        Write-Host "Uwaga: $app mógł być już zainstalowany lub wystąpił błąd." -ForegroundColor Gray
    }
}

# 3. Sekcja: Aktualizacje (Updates)
Write-Host "`n--- AKTUALIZACJA OPROGRAMOWANIA ---" -ForegroundColor Yellow
Write-Host "Sprawdzanie dostępnych aktualizacji..." -ForegroundColor Cyan
winget upgrade --all --silent --accept-source-agreements --accept-package-agreements

Write-Host "`n--- WSZYSTKIE ZADANIA ZAKOŃCZONE ---" -ForegroundColor Green
Write-Host "Skrypt przygotowany przez: Bartosz Bąk"
Pause
