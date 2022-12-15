#!/bin/bash
#Adivinar numero del 1 al 100
num=$(( $RANDOM % 100 + 1 ))
opcion=101
until [[ $opcion -eq 0 ]]; do
  clear
  echo "Introduce  0 para rendirte $num"
  read -p "Introduce un numero entre 1 y 100: " opcion
  if [[ $opcion -lt $num && $opcion -ne 0 ]]; then
    echo "$opcion es menor que el numero buscado"
  elif [[ $opcion -gt $num ]]; then
      echo "$opcion es mayor que el numero buscado"
  elif [[ $opcion -eq $num ]]; then
      echo "Felicidades!!! Has ganado"
     exit 0
  elif [[ $opcion -eq 0 ]]; then
      echo "Has perdido!!!"
  else
    echo "Error. El valor introducido no es valido"
  fi
  read -p "Pulsa enter para continuar" continuar
done
