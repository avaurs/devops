#!/usr/bin/env bash

# Ce script configure une tâche cron qui exécute un script spécifique toutes les 5 minutes.
# Le script exécuté est `personnages.sh`, situé dans le répertoire de travail actuel.
# La tâche cron passe un nom de répertoire horodaté comme argument à `personnages.sh`.

# Mettre à jour les listes de paquets pour les mises à niveau et les nouvelles installations de paquets
sudo apt-get update

# Installer le paquet cron
sudo apt-get install cron

# Démarrer le service cron
sudo service cron start

# Vérifier le statut du service cron
sudo service cron status

# Définir le chemin du script
# C'est le chemin vers le script que la tâche cron exécutera.
# Il est défini sur `personnages.sh` dans le répertoire de travail actuel.
SCRIPT_PATH="Exercice1/FileSystemManagement.bash/personnages.sh"

# Définir le format de la date
# C'est le format de l'horodatage qui sera ajouté au nom du répertoire.
# Il inclut l'année, le mois, le jour, l'heure et la minute.
DATE_FORMAT="\$(date +\%Y-\%m-\%d-\%H-\%M)"

# Définir l'entrée du crontab
# C'est la tâche cron qui sera ajoutée au crontab.
# Elle exécute le script `personnages.sh` toutes les 5 minutes, en passant un nom de répertoire horodaté comme argument.
CRON_ENTRY="*/5 * * * * /bin/bash $SCRIPT_PATH $HOME/personnages-$DATE_FORMAT"

# Ajouter l'entrée au crontab
# Cette commande ajoute la tâche cron définie au crontab.
# Elle liste d'abord les entrées crontab existantes, puis ajoute la nouvelle entrée, et enfin installe le nouveau crontab.
(crontab -l; echo "$CRON_ENTRY" ) | crontab -
