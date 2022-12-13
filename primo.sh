#!/bin/bash
#Verificar numero pasado por parametros si es primo o no
for((i=2; i<=$1/2; i++))
do
  ans=$(( $1%i ))
  if [ $ans -eq 0 ]
  then
    echo "$1 no es un numero primo"
    exit 0
  fi
done
echo "$1 es un numero primo"
