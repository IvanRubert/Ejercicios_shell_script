#!/bin/bash
#Introduce 2 parametros y te dice cual es mayor
if [[ $1 -lt $2 ]]; then
  echo "$1 es menor que $2"
elif [[ $1 -gt $2 ]]; then
  echo "$1 es mayor que $2"
else
  echo "$1 es igual a $2"
fi
