#!/bin/bash
#Reiniciar ahora o en N minutos
if [[ $1 ]];then
  if [[ $1 > 0 ]];then
    shutdown -r $1
  else
    echo "Introduce un valor mayor a 0"
  fi
else
  until [[ $op -eq 1 || $op -eq 2 ]];do
    clear
    echo -e "1 -> Reiniciar ahora
2 -> Reiniciar en N minutos
0 -> Salir"
    read -p "Introduce una opcion: " op
    case $op in
      1)
        reboot
      ;;
      2)
        read -p "Introduce un número para reiniciar el equipo en minutos: " num
        shutdown -r $num
      ;;
      0)
        echo "Has salido"
        exit 0
      ;;
      *)
        echo "Error. Introduce una opcion correcta"
      ;;
    esac
    read -p "Pulsa Enter para continuar: " continuar
  done
fi
