#!/bin/bash

mkdir -p personnages/mascottes

mv personnages/super\ heros/hommes/sans\ cape/linuxman personnages/mascottes/tux

mv personnages/super\ heros personnages/comics

echo "Bruce Wayne hides behind this character" > personnages/comics/hommes/cape/batman

echo "He lives in Gotham" >> personnages/comics/hommes/cape/batman

echo "Homer Simpson hides behind this character" > personnages/comics/hommes/sans\ cape/daredevil

echo "DareDevil is a blind comic character" > personnages/comics/hommes/sans\ cape/daredevil

cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cape/daredevil > personnages/mascottes/mixdarbat

sudo useradd -m fanboy || true

sudo cp -r personnages /home/fanboy

sudo chown -R fanboy:fanboy /home/fanboy/personnages

sudo ln -sf /home/fanboy/personnages /home/fanboy/persofanboy

name=$(whoami)
cp -r personnages /home/$name/
sudo ln -sf /home/$name/personnages /home/$name/perso_$name

sudo apt install -y tree
sudo tree /home/fanboy/personnages > temp.txt

grep -v "directories" temp.txt > result.txt

history_file_path=$HISTFILE
if [[ -f $history_file_path ]]; then
    grep -v "cd" $history_file_path | tail -n 250 > myhistory
else
    echo "Erreur : le fichier .bash_history n'existe pas"
fi