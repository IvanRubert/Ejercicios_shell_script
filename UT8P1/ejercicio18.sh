#!/bin/bash
#Script que reciba como parámetro un nombre de usuario, y diga si está o no
#en el sistema
if id "$1" >/dev/null 2>&1; then
  echo "El usuario $1 existe"
  w | grep $1
else
  echo "El usuario $1 no existe"
fi
