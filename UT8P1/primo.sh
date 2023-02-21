#!/bin/bash
#Verificar numero pasado por parametros si es primo o no
if [[ $1 =~ ^-?[0-9]+$ ]]; then
for((i=2; i<=$1/2; i++))
do
  ((ans=$1%i))
  if [ $ans -eq 0 ]
  then
    echo "$1 no es un numero primo"
    exit 0
  fi
done
echo "$1 es un numero primo"
else
echo "El primer parametro debe ser un numero"
fi
