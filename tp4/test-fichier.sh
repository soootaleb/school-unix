#!/bin/bash

function Usage {
     echo "Veuillez passer un fichier en paramètre"
     exit 1
}

[ $# -ne 1 ] && Usage Yousra Samuel Sama Hichem
[ -d $1 ] && echo "le fichier $1 c'est un dossier"
[ -f $1 ] && [ -s $1 ] && echo "le fichier $1 est un fichier ordinaire qui n'est pas vide"
[ -r $1 ] && echo "$1 est accessible en lecture par $USER"
[ -w $1 ] && echo "$1 est accessible en ecriture par $USER"
[ -x $1 ] && echo "$1 est accessible en execution par $USER"



