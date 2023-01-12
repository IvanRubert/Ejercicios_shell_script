#!/bin/bash
#Script que copie el fichero indicado como primer parámetro de manera que la 
#copia tenga el nombre indicado en el segundo parámetro
if [[ $# -eq 2 ]]; then
  if [[ -f $1 ]]; then
    if [[ ! -f $2 ]]; then
      cp $1 $2
    else
      echo "$2 existe. Introduzca un parametro que no exista"
    fi
  else
    echo "$1 no existe. Introduzca un parametro que exista"
  fi
else
  echo "Se deben introducir 2 parametros"
fi
