#!/bin/bash
#Comprobar si un fichero existe

if [[ -e $1 ]]; then
  if [[ -d $1 ]]; then
    echo "$1 existe y es un directorio"
  else
    echo "$1 esiste y es un fichero"
  fi
else
  echo "$1 no existe"
fi
