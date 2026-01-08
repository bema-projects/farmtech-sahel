#Forcer la console à comprendre l'UTF-8 (Accents et Émojis)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

$LogFile = "app\sensors\logs\weather.log"
$AlertFile = "app\sensors\logs\alerts.log"

Write-Host "--- ANALYSE DES ALERTES SÉCHERESSE (SAHEL) ---" -ForegroundColor Yellow

if (Test-Path $LogFile) {
    # On cherche les lignes où l'humidité est entre 5 et 9%
    $Alerts = Get-Content $LogFile | Select-String -Pattern "Hum: [5-9]%"
    
    if ($Alerts) {
        Write-Host "⚠️ ALERTE : $($Alerts.Count) relevé(s) critique(s) détecté(s) !" -ForegroundColor Red
        $Alerts | Out-File -FilePath $AlertFile -Encoding utf8
        $Alerts
    } else {
        Write-Host "✅ RAS : Aucune alerte détectée." -ForegroundColor Green
    }
} else {
    Write-Host "Erreur : Fichier de log introuvable." -ForegroundColor Red
}