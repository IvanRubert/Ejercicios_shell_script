#!/bin/bash
#Comprobar si un fichero existe y se tienen permisos de lectura

if [[ -f $1 ]]; then
  if [[ -r $1 ]]; then
    cat $1
  else
    echo "$1 esiste pero no tenemos permisos de lectura"
  fi
else
  echo "$1 no existe"
fi
