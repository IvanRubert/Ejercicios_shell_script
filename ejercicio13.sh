#!/bin/bash
#Programa que va sumando el numero introducido hasta que se introduzca un 0
opcion=1
res=0
until [[ $opcion -eq 0 ]]; do
  clear
  read -p "Introduce una opcion para sumarlo a $res: " opcion
  echo -e "$res + $opcion = \c"
  ((res=$res+$opcion))
  echo -e "$res\n"
  read -p "Pulsa Enter para continuar" continuar
done
