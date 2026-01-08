#Forcer la console à comprendre l'UTF-8 (Accents et Émojis)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

# 1. On définit le chemin depuis la racine du projet
$LogDir  = "app\sensors\logs"
$LogFile = "$LogDir\weather.log"

# 2. Créer le dossier s'il n'existe pas
if (-not (Test-Path $LogDir)) {
    New-Item -ItemType Directory -Path $LogDir -Force
}

# 3. Variables de simulation
$Zone = "Rosso"
$Temp = Get-Random -Minimum 25 -Maximum 45
$Hum  = Get-Random -Minimum 5 -Maximum 20
$Date = Get-Date -Format "yyyy-MM-dd HH:mm"

# 4. Création de la ligne
$Entry = "$Date | Zone: $Zone | Temp: $($Temp)°C | Hum: $($Hum)%"

# 5. Écriture (Append)
$Entry | Out-File -FilePath $LogFile -Append -Encoding utf8

Write-Host "Succès ! Donnée ajoutée dans $LogFile" -ForegroundColor Cyan