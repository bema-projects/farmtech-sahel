
#Forcer la console à comprendre l'UTF-8 (Accents et Émojis)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "=== DÉMARRAGE DE LA ROUTINE FARMTECH-SAHEL ===" -ForegroundColor Magenta

# 1. Lancer le simulateur
.\scripts\simulator.ps1

# 2. Petite pause
Start-Sleep -Seconds 1

# 3. Lancer l'analyseur
.\scripts\analyzer.ps1

# --- SOLUTION DU DÉFI ---
$DateDuJour = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
Write-Host "------------------------------------------"
Write-Host "Rapport généré le : $DateDuJour" -ForegroundColor Green
Write-Host "=== ROUTINE TERMINÉE ===" -ForegroundColor Magenta