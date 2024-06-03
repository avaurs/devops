#!/bin/bash

# Définir l'entrée du crontab
CRON_ENTRY="*/5 * * * * /bin/bash Exercice1/FileSystemManagement.bash /home/user/folders/\$(date +\%Y-\%m-\%d)"

# Ajouter l'entrée au crontab
(crontab -l; echo "$CRON_ENTRY" ) | crontab -