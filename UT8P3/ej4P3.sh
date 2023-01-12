#!/bin/bash
#script gestionusuarios.sh que permita dar de alta y de baja a usuario del 
#sistema GNU/Linux indicados como argumento:
#Formato: ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]
while IFS=, read -r op nombre ap1 ap2 grp
do
l=${#ap1}
l2=${#ap2}
l3=${#nombre}
nom=${nombre:0:1}
ape1=${ap1:0:2}
ape2=${ap2:0:2}
    if [[ $grp == "" ]]; then
      if [[ $op == "alta" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              useradd "alu${ape1}${ape2}${nom}"
              echo "Usuario alu${ape1}${ape2}${nom} creado correctamente"
            else
              echo "$nombre tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$ap2 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$ap1 tiene que tener como minimo 2 caracteres"
        fi
      elif [[ $op == "baja" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              userdel "alu${ape1}${ape2}${nom}"
              echo "Usuario alu${ape1}${ape2}${nom} eliminado del sistema"
            else
              echo "$nombre tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$ap2 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$ap1 tiene que tener como minimo 2 caracteres"
        fi

      else
        echo "Error. Formato incorrecto:
$0 alta nombre apellido1 apellido2 [grupo]
$0 baja nombre apellido1 apellido2 [grupo]"
      fi
    else
      if [[ $op == "alta" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              useradd "alu${ape1}${ape2}${nom}"
              groupadd $grp
              usermod -a -G $grp "alu${ape1}${ape2}${nom}"
              echo "Usuario alu${ape1}${ape2}${nom} creado correctamente y añadido al grupo $grp"
            else
              echo "$nombre tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$ap2 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$ap1 tiene que tener como minimo 2 caracteres"
        fi
      elif [[ $op == "baja" ]]; then
        if [[ $l -ge 2 ]]; then
          if [[ $l2 -ge 2 ]]; then
            if [[ $l3 -ge 1 ]]; then
              userdel "alu${ape1}${ape2}${nom}"
              groupdel $grp
              echo "Usuario alu${ape1}${ape2}${nom} eliminado del sistema y del grupo $grp"
            else
              echo "$nombre tiene que tener como minimo 1 caracter"
            fi
          else
            echo "$ap2 tiene que tener como minimo 2 caracteres"
          fi
        else
          echo "$ap1 tiene que tener como minimo 2 caracteres"
        fi
      else
        echo "Error. Formato incorrecto:
$0 alta/baja nombre apellido1 apellido2 [grupo]"
      fi
    fi
done < usuarios.txt
