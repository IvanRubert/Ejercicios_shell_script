#!/bin/bash
#Sumar 2 numeros pasados por parametro
if [[ $1 && $2 ]]; then
  if [[ $1 =~ ^-?[0-9]+.?[0-9]+$ ]]; then
    if [[ $2 =~ ^-?[0-9]+.?[0-9]+$ ]]; then
      sum=$(echo "$1 + $2" | bc)
        echo "$1 + $2 = $sum"
    else
      echo "El segundo parametro debe ser un numero"
    fi
else
  echo "Error"
  echo "num1 y num2 sustituir por numeros"
  echo "Uso: $0 num1 num2"
fi
