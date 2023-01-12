#!/bin/bash
#Sumar 2 numeros pasados por parametro
if [[ $1 && $2 ]]; then
  ((sum=$1+$2))
  echo "$1 + $2 = $sum"
else
  echo "Error"
  echo "num1 y num2 sustituir por numeros"
  echo "Uso: $0 num1 num2"
fi
