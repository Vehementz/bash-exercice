#!/bin/bash
while true; do
  read -p "Quel dossier voulez-vous sauvegarder ?" folder

  if [ ! -d "$folder" ]; then
    echo "Le dossier spécifié n'existe pas."
  else
    echo "Où voulez-vous sauvegarder le fichier ?"
    read file_path
    if [ ! -d "$file_path" ]; then
      echo "Le répertoire où sauvegarder n'existe pas."
    else
      cp -r "$folder/" "$file_path"
      echo "Sauvegarde effectuée."
    fi
  fi

  read -p "Voulez-vous sauvegarder un autre dossier? (o/n) " autre
  if [[ $autre != "o" ]]; then
    echo "Fin du script."
    break
  else
    continue
  fi
done
