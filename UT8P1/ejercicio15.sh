#!/bin/bash
#Comprobar si la ruta es un directorio, archivo, enlace simbolico,
#archivo especial de bloque, archivo especial de caracter
if [[ -e $1 ]]; then
  if [[ -b $1 ]]; then
    echo "$1 existe y es un archivo especial de bloque"
  elif [[ -c $1 ]]; then
    echo "$1 existe y es un archivo especial de caracter"
  elif [[ -d $1 ]]; then
    echo "$1 existe y es un directorio"
  elif [[ -h $1 ]]; then
    echo "$1 existe y es un enlace simbolico"
  else
    echo "$1 existe y es un fichero"
  fi
else
  echo "$1 no existe"
fi
