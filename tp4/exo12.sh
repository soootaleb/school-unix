#!/bin/bash

read -p "Saisir un numéro de mois: " mois

nbj() {
    case $1 in
        1|3|5|7|8|10|12) echo "31 jours";;
        2) echo "28 ou 29";;
        4|6|9|11) echo "30 jours";;
        *) echo "Pas un mois de l'année";;
    esac
}

nbj $mois