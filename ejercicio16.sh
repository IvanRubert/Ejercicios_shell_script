#!/bin/bash
#Mostrar cuantos ficheros y subdirectorios contiene el directorio introducido
#por parametros
if [[ -d $1 ]]; then
  echo "Numero de ficheros:"
  find $1 -type f | wc -l
  echo "Numero de subdirectorios:"
  find $1 -type d | wc -l
else
  echo "$1 no es un directorio"
fi
