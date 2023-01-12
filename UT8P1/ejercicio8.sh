#!/bin/bash
#Bucle for que muestre
#1
#22
#333
#4444
#55555
for ((i=1; i<=5; i++)); do
  for ((x=1; x<=$i; x++)); do
    echo -e "$i \c"
  done
  echo -e " \n"
done
