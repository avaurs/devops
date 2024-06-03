#!/bin/bash

## Variable stockant le chemin racine qui fonctionnera uniquement sur mon PC
root_dir="/home/avaurs/Documents/devops"

## Liste contenant chaque dossier a créer
directories=(
    "$root_dir/personnages/mascottes"
    "$root_dir/personnages/super heros/femmes/cape"
    "$root_dir/personnages/super heros/femmes/sans cape"
    "$root_dir/personnages/super heros/hommes/cape"
    "$root_dir/personnages/super heros/hommes/sans cape"
    "$root_dir/personnages/super heros/femmes/cape/batgirl"
    "$root_dir/personnages/super heros/femmes/cape/wonderwoman"
    "$root_dir/personnages/super heros/femmes/sans cape/electra"
    "$root_dir/personnages/super heros/femmes/sans cape/superwoman"
)

# Liste contenant chaque fichier a créer
files=(
    "$root_dir/personnages/mascottes/beastie"
    "$root_dir/personnages/mascottes/bibendum"
    "$root_dir/personnages/mascottes/mario"
    "$root_dir/personnages/mascottes/sonic"
    "$root_dir/personnages/super heros/hommes/cape/batman"
    "$root_dir/personnages/super heros/hommes/cape/superman"
    "$root_dir/personnages/super heros/hommes/cape/thor"
    "$root_dir/personnages/super heros/hommes/sans cape/antman"
    "$root_dir/personnages/super heros/hommes/sans cape/daredevil"
    "$root_dir/personnages/super heros/hommes/sans cape/linuxman"
    "$root_dir/personnages/super heros/hommes/sans cape/spiderman"
)

# Boucle qui crée les dossier qui sont dans la liste directories et leur donne les droits 775 soit propriétaire= Tous les droits, Groupe= Tous les droits et les autres= Lire et executé. 
for dir in "${directories[@]}"; do
    mkdir -m 775 -p "$dir"
done

# Crée les fichiers qui sont dans la liste files et donne les droits 664
for file in "${files[@]}"; do
    if [[ -n "$file" ]]; then
        echo "Creating file: $file" 
        touch "$file"
        chmod 664 "$file"
    else
        echo "Error: file variable is empty"
    fi
done
