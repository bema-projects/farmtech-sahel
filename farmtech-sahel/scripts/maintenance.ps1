$LogFile = "app\sensors\logs\weather.log"
$BackupDir = "app\sensors\backups"
$Date = Get-Date -Format "yyyyMMdd"

Write-Host "--- MAINTENANCE FARMTECH-SAHEL ---" -ForegroundColor Yellow

if (Test-Path $LogFile) {
    # Déplacer et renommer le fichier
    Move-Item -Path $LogFile -Destination "$BackupDir\weather_$Date.log" -Force
    
    # Recréer le fichier vide
    New-Item -Path $LogFile -ItemType File
    
    Write-Host "Succès : Ancien log archivé dans $BackupDir" -ForegroundColor Green
}