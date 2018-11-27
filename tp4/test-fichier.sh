#!/bin/sh

if [ "$#" -eq 0 ]; then
  echo 'Usage : ./test-fichier <fichier>'
fi

fichier=$1