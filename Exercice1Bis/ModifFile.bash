#!/bin/bash

# 1 bouge linuxman vers tux dans le repertoire mascot
mkdir -p personnages/mascottes
mv personnages/super\ heros/hommes/sans\ cape/linuxman personnages/mascottes/tux

# 2 Renomme les répertoire super héros en comics
mv personnages/super\ heros personnages/comics

# 3 Ecris dans le fichier batman
echo "Bruce Wayne hides behind this character" > personnages/comics/hommes/cape/batman

# 4 Ajout au fichier batman
echo "He lives in Gotham" >> personnages/comics/hommes/cape/batman

# 5 Ecris dans le fichier dardevil
echo "Homer Simpson hides behind this character" > personnages/comics/hommes/sans\ cape/daredevil

# 6 Ré-écris le contenus du fichier dardevil
echo "DareDevil is a blind comic character" > personnages/comics/hommes/sans\ cape/daredevil

# 7 copie le contenus de batman et dardevil dans le fichier mixdarbat
cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cape/daredevil > personnages/mascottes/mixdarbat

# 9 Crée un user nommé "fanboy"
# If the user already exists, ignore the error
# Vérification de l'existance de l'utilisateur, si existe = pas creer sinon le créera
sudo useradd -m fanboy || true

# 10 Copy le dossier character dans le home de "fanboy"
sudo cp -r personnages /home/fanboy

# 11 Change le propriétaire et le groupe du repertoire
sudo chown -R fanboy:fanboy /home/fanboy/personnages

# 12 Crée un lien symbolique de personnages ver persofanboy
# Option f pour forcer la création du lien
sudo ln -sf /home/fanboy/personnages /home/fanboy/persofanboy

# 13. Crée un lien symbolique "perso_votrenom" pointant vers /home/votrenom/personnages
# Remplacez "votrenom" par votre nom d'utilisateur réel
votrenom=$(whoami)  # Obtenir le nom d'utilisateur actuel
cp -r personnages /home/$votrenom/
# Ajouter l'option -f pour forcer la création du lien symbolique
sudo ln -sf /home/$votrenom/personnages /home/$votrenom/perso_$votrenom

# 14. Sauvegardez la structure complète de l'arborescence de /home/fanboy/personnages dans 14.txt
sudo apt install -y tree
sudo tree /home/fanboy/personnages > 14.txt

# 15. Supprimez les occurrences du mot "directories" de 14.txt et enregistrez le résultat dans 15.txt
grep -v "directories" 14.txt > 15.txt

# 16. Sauvegardez les 250 dernières lignes de l'historique dans myhistory, en supprimant les lignes contenant la commande "cd"
# Utilisez la variable d'environnement HISTFILE pour obtenir le chemin vers votre fichier .bash_history
history_file_path=$HISTFILE
if [[ -f $history_file_path ]]; then
    grep -v "cd" $history_file_path | tail -n 250 > myhistory
else
    echo "Erreur : le fichier .bash_history n'existe pas"
fi