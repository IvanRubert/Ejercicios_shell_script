#!/bin/bash
#Numero introducido por el usuario para saber si es par o impar
read -p "Introduce un numero para saber si es par o impar: " num
((res=$num%2))
if [[ $res -eq 0 ]]; then
  echo "$num es un numero par"
else
  echo "$num es un numero impar"
fi
