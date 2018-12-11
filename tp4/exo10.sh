#!/bin/bash

choices=(
    "Demander un login"
    "Vérifier l'existance d'un utilisateur"
    "Afficher l'UID, GID et le répertoire de travail d'un utilisateur existant"
    "Quitter"
)

user=$(whoami)

select choice in "${choices[@]}"; do
    case "$REPLY" in
        1) echo -n "Select user (current is $user): "; read user ; echo "New user is $user"; continue;;
        2) id -u $user > /dev/null; [ $? -eq 0 ] && echo "User exists";;
        3) echo "$(id $user | cut -d " " -f 1,2) echo $(~$user)";;
        4) exit;;
    esac
done


cat /etc/passwd | awk -F : '$3 >= 1000'