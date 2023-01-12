#!/bin/bash
#Crear menu
function numeros(){
  read -p "Introduce el primer operador: " num1
  read -p "Introduce el segundo operador: " num2
}
opcion=1
until [[ $opcion -eq 0 ]]; do
  clear
  echo -e "Escoge una opcion:
1 -> Sumar
2 -> Restar
3 -> Dividir
4 -> Multiplicar
0 -> Salir"
  read -p "¿Que opcion eliges? " opcion
  case $opcion in
    1)
      numeros
      ((res=num1+num2))
      echo "$num1 + $num2 = $res"
    ;;
    2)
      numeros
      ((res=num1-num2))
      echo "$num1 - $num2 = $res"
    ;;
    3)
      numeros
      res=$(echo "scale=2; $num1/$num2" | bc)
      echo "$num1 / $num2 = $res"
    ;;
    4)
      numeros
      ((res=num1*num2))
      echo "$num1 * $num2 = $res"
    ;;
    0)
      echo "Has salido"
    ;;
    *)
      echo "Error. Opcion introducida no valida"
    ;;
  esac
  read -p "Pulsa Enter para continuar" continuar
done
