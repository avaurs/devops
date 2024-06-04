# DevOps

Rendu devoir DevOps.

Créé par Amalric Vaurs

# Mise en place

1. Cloner le dépot ```git clone https://github.com/avaurs/devops.git```
2. Se déplacer dans le répertoire devops
3. Modifier le script ```exercice1.bash``` pour que ```$root_dir``` corresponde à l'arborescence du projet

# Execution des scripts

1. Executer ```exercice1.bash```
2. Executer ```exercice1bis.bash``` à la racine du dossier créé par ```exercice1.bash``` (ici ```personnages```)
3. Modifier le script ```exercice2.bash``` pour que ```CRON_ENTRY``` corresponde à l'arborescence du projet
4. Executer ```exercice2.bash```

# Contribuer au projet

1. 'Forker' le dépôt Git
2. Créer une nouvelle 'Branch' : ```git checkout -b nom-de-la-nouvelle-branche```
3. Effectuer un 'Commit' : ```git commit -m 'description du commit'```
4. 'Push' la branche : ```git push origin nom-de-la-nouvelle-branche```
5. Ouvrir une 'Pull Request'

# Exercice 1
Arborescence attendue à la suite de l'exercice :
``` bash
[drwxr-xr-x ]  personnages
├── [drwxrwxr-x ]  mascottes
│   ├── [-rw-r--r-- ]  beastie
│   ├── [-rw-r--r-- ]  bibendum
│   ├── [-rw-r--r-- ]  mario
│   └── [-rw-r--r-- ]  sonic
└── [drwxr-xr-x ]  super heros
    ├── [drwxr-xr-x ]  femmes
    │   ├── [drwxrwxr-x ]  cape
    │   │   ├── [drwxrwxr-x ]  batgirl
    │   │   └── [drwxrwxr-x ]  wonderwoman
    │   └── [drwxrwxr-x ]  sans cape
    │       ├── [drwxrwxr-x ]  electra
    │       └── [drwxrwxr-x ]  superwoman
    └── [drwxr-xr-x ]  hommes
        ├── [drwxrwxr-x ]  cape
        │   ├── [-rw-r--r-- ]  batman
        │   ├── [-rw-r--r-- ]  superman
        │   └── [-rw-r--r-- ]  thor
        └── [drwxrwxr-x ]  sans cap
            ├── [-rw-r--r-- ]  antman
            ├── [-rw-r--r-- ]  daredevil
            ├── [-rw-r--r-- ]  linuxman
            └── [-rw-r--r-- ]  spiderman
```

# Exercice 1 Bis

Exécuter ```exercice1bis.bash``` pour effectuer des modifications sur les fichiers générés lors de l'Exercice 1.

## Step-by-step :
``` bash
1 Déplacer "linuxman" vers "tux" dans le répertoire "mascottes"
2 Renommer les répertoires "super héros" en "comics"
3 Écrire dans le fichier "batman"
4 Ajouter au fichier "batman"
5 Écrire dans le fichier "daredevil"
6 Réécrire le contenu du fichier "daredevil"
7 Copier le contenu de "batman" et "daredevil" dans le fichier "mixdarbat"
9 Créer un utilisateur "fanboy"
10 Copier le dossier "personnages" dans "/home/fanboy"
11 Modifier le propriétaire et le groupe du répertoire
12 Créer un lien symbolique de "personnages" vers "persofanboy"
13 Créer un lien symbolique "perso_votrenom" dont la cible est "/home/name/personnages"
14 Sauvegarder l'arborescence de /home/fanboy/personnages dans "temp.txt"
15 Supprimer les occurrences du keyword "directories" de "temp.txt" et sauvegarder le résultat dans "result.txt"
16 Sauvegarder les 250 dernières lignes de l'historique dans myhistory tout en supprimant les lignes contenant la commande "cd"
```

# Exercice 2 Bis

Apprendre à utiliser Gitpod.

## Step-by-step :
``` bash
1 Créer un compte Gitpod.
2 Installer l'extension Gitpod
3 CLiquer sur le bouton "Open" apparu à la suite de l'installation de l'extension Gitpod
4 Entrer les informations de connexion GitHub
5 On constate qu'une fenêtre VSCode apparaît dans une fenêtre du navigateur
6 Installer "cron" via le terminal de l'IDE via la commande "sudo apt install cron"
7 Executer le service "cron" via la commande "sudo service cron start"
8 Vérifier son bon fonctionnement via la commande "sudo service cron status"
```

# Script
Le script "exercice1.bash" servira à créer automatiquement le "crontab".

# Exercice 2 Ter
## Fichier .Dockerfile
Le fichier ".Dockerfile" permet de définir l'environnement Gitpod qui sera utilisé (image Docker à utiliser et commandes à exécuter lors de la création de l'environnement Gitpod).

``` Dockerfile
FROM gitpod/workspace-python

USER root

RUN apt-get update && apt-get install -y cron tree

RUN service cron start
```

## Fichier .yml
Le fichier ".yml" permet de définir quels seront les fichiers à utiliser dans l'environnement Gitpod ainsi que de les rendre exécutables.

```yaml
image:
  file: .gitpod.Dockerfile

tasks:
  - init: chmod +x ./*/*.bash
```

# Licence
Soumis à la licence MIT. Voir le fichier [LICENSE](LICENSE).