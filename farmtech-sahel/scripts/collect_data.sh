#!/bin/bash
LOG_DIR="../app/sensors/logs"
DATE=$(date +%Y-%m-%d_%H-%M)
mkdir -p $LOG_DIR
echo "--- Collecte FarmTech Sahel ($DATE) ---" >> $LOG_DIR/collecte.log
echo "Zone: Rosso | Humidité: 14% | Statut: OK" >> $LOG_DIR/collecte.log