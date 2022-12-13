#!/bin/bash
#Imprimir numeros con bucle while
num=5
while [[ $num -gt 0 ]]; do
  echo -e "$num \c"
  ((num--))
done
echo -e "\n"
