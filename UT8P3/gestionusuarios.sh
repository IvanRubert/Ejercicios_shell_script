#!/bin/bash
#script gestionusuarios.sh que permita dar de alta y de baja a usuario del 
#sistema GNU/Linux indicados como argumento:
#Formato: ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]
ap1=$3
ap2=$4
nombre=$2
l=${#ap1}
l2=${#ap2}
l3=${#nombre}
nom=${nombre:0:1}
ape1=${ap1:0:2}
ape2=${ap2:0:2}
if [[ $# -le 5 ]]; then
  if [[ $# -lt 4 ]]; then
    echo "Se deben usar 4 parametros como minimo con el formato:"
    echo "$0 alta/baja nombre apellido1 apellido2 [grupo]"
  else
    if [[ $# -eq 4 ]]; then
      if [[ $1 = "alta" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              useradd "alu${ape1}${ape2}${nom}"
              echo "Usuario alu${ape1}${ape2}${nom} creado correctamente"
            else
              echo "$2 tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$4 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$3 tiene que tener como minimo 2 caracteres"
        fi
      elif [[ $1 == "baja" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              userdel "alu${ape1}${ape2}${nom}"
              echo "Usuario alu${ape1}${ape2}${nom} eliminado del sistema"
            else
              echo "$2 tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$4 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$3 tiene que tener como minimo 2 caracteres"
        fi

      else
        echo "Error. Formato incorrecto:
$0 alta nombre apellido1 apellido2 [grupo]
$0 baja usuario [grupo]"
      fi
    else
      if [[ $1 == "alta" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              useradd "alu${ape1}${ape2}${nom}"
              groupadd $5
              usermod -a -G $5 "alu${ape1}${ape2}${nom}"
              echo "Usuario alu${ape1}${ape2}${nom} creado correctamente y añadido al grupo $5"
            else
              echo "$2 tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$4 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$3 tiene que tener como minimo 2 caracteres"
        fi
      elif [[ $1 == "baja" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              userdel "alu${ape1}${ape2}${nom}"
              groupdel $5
              echo "Usuario alu${ape1}${ape2}${nom} eliminado del sistema y del grupo $5"
            else
              echo "$2 tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$4 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$3 tiene que tener como minimo 2 caracteres"
        fi
      else
        echo "Error. Formato incorrecto:
$0 alta/baja nombre apellido1 apellido2 [grupo]"
      fi
    fi
  fi
else
  echo "Error: Solo se puede añadir un grupo"
fi
