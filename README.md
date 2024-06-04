# Devoir-Dev-SecOps
# Description

Ce Depot github est le resultat d'un devoir pour la matière Dev SecOps.

# Installation

1. Cloner le dépot : ```git clone https://github.com/arthur59930/Devoir-Dev-SecOps.git```
2. Se rendre dans le répertoire devops
3. Modifier la variable $root_dir dans le script de l'exercice 1 pour le rendre le chemin compatible sur votre PC

# Utilisation

1. Executé le script de l'exercice 1
2. Deplacer le script Exercice1Bis dans le dossier Exercie1
3. Executé le script de l'exercice 1 Bis
4. Modifier le script de l'exercice 2 Bis pour que le chemin de la crontab soit coherant sur votre systeme
5. Executé le script de l'exercice 2 Bis

# Comment Contribuer

1. Forker le dépôt
2. Créer une nouvelle branche : ```git checkout -b nouvelle-branche```
3. Faire des commits : ```git commit -m 'description des modifications'```
4. Pousser la branche : ```git push origin nouvelle-branche```
5. Ouvrir une Pull Request


# Explication
## Exercice
### Exercise 1 - File System Management
Cette exercices nous fait faire un script qui va creer une arborescence bien precise :
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
```Diff
- Attention !!!! pour faire fonctionner ce script sur d'autre ordinateur, il vous faut modifier la variable "$root_dir"
```

### Exercice 1 Bis Modification aprés execution du script de l'exercice 1

Le script present dans le dossier Exercice1Bis vas effectuer des modifications sure les fichier/dossier de l'exercice 1

``` Diff
- Pour que le script fonctionne correctement, il faut que le script soit placer a la racinne de l'arborescence creer par le scipt de l'exercice 1 (Dans le dossier personnages) 
```

#### Etapes :
``` bash
1 bouge linuxman vers tux dans le repertoire mascottes
2 Renomme les répertoires super héros en comics
3 Écris dans le fichier batman
4 Ajoute au fichier batman
5 Écris dans le fichier daredevil
6 Réécris le contenu du fichier daredevil
7 copie le contenu de batman et daredevil dans le fichier mixdarbat
9 Crée un utilisateur nommé "fanboy"
10 Copie le dossier personnages dans le home de "fanboy"
11 Change le propriétaire et le groupe du répertoire
12 Crée un lien symbolique de personnages vers persofanboy
13 Crée un lien symbolique "perso_votrenom" pointant vers /home/votrenom/personnages
14 Sauvegardez la structure complète de l'arborescence de /home/fanboy/personnages dans 14.txt
15 Supprimez les occurrences du mot "directories" de 14.txt et enregistrez le résultat dans 15.txt
16 Sauvegardez les 250 dernières lignes de l'historique dans myhistory, en supprimant les lignes contenant la commande "cd"
```

### Exercice 2 Bis

Cet exercice nous apprend à utiliser gitpod (Solution cloud pour environnement de développement)
Dans cet exercice, nous allons commencer par ajouter cron dans notre environnement cloud.

#### Installation de l'extension de navigateur

Pour ma part je commence par me creer un compte sur gitpod. Ensuite j'installe l'extension sur mon navigateur.
Cela me permet ensuite d'aller sur mon projet git en ligne et lancer mon environnement en 1 clique.
![Alt text](img/2024-06-02_23-31.png?raw=true "Extension de navigateur")

On peut constater que gitpod nous lance un VScode dans notre navigateur
![Alt text](img/2024-06-02_23-38.png?raw=true "Extension de navigateur")

#### Installation crontab dans notre nevironnement
Nous devons maitenant installer cron dans notre environnement.

Pour ce faire, il nous suffit de l'installer via le terminal de l'IDE.
![Alt text](img/2024-06-02_23-42.png?raw=true "Extension de navigateur")

Une fois fait, Nous pouvons lancer le service et verifier son bon fonctionnement
![Alt text](img/2024-06-02_23-47.png?raw=true "Extension de navigateur")

#### Création du script
Nous pouvons maintenant créer notre script

##### 1er Script
Le script "ExecScript1.bash" n'est en réalité que le contenue du crontab.

##### 2eme Script
Le script "AutomatisationDeLaMiseEnPlaceDeCronEtLancementDu1Script.bash" lui est plus complet.

Il va nous installer cron dans l'environnement puis executé le script qui nous crée l'arborescence.

### Exercice 2 Ter
#### Creation des fichier gitpod
##### Fichier Dockerfile
Le fichier dockerfile nous permet de controler l'environement Gitpod.

Dans mon Cas le fichier ressemble a ceci :
``` Dockerfile
# Utilise l'image de base gitpod/workspace-python, qui inclut un environnement de développement Python.
FROM gitpod/workspace-python

# Passe à l'utilisateur root pour avoir les permissions nécessaires pour les opérations suivantes.
USER root

# Installe les paquets cron et tree.
RUN apt-get update && apt-get install -y cron tree

# Démarre le service cron.
RUN service cron start
```

Ce fichier va dire a gitpod qu'elle image docker utilisé et les commande a exécuté dans l'environement. Dans notre cas ce sera le téléchargement de Cron ainsi que son activation.

##### Fichier yaml
Ce Fichier sert a dire a gitpod qu'elle fichier celui-ci doit prendre en compte ainsi que la commande permetant de rendre les fichier executable dans l'environnement.

Mon fichier :
```yaml
# Spécifie l'image Docker à utiliser pour l'espace de travail.
image:
  file: .gitpod.Dockerfile

# Définit les tâches à exécuter au démarrage de l'espace de travail.
tasks:
  # Rend tous les fichiers .sh exécutables dans tous les sous-répertoires du répertoire actuel.
  - init: chmod +x ./*/*.bash
```
##### Rendre les fichiers executables

![Alt text](img/2024-06-03_18-00.png?raw=true "Extension de navigateur")

# Auteur
Nom : Arthur Hallez

# Licence
Ce projet est soumis a la licence MIT, voir le fichier [LICENSE](LICENSE).