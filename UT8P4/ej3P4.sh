#!/bin/bash
#Buscar la palabra hack y se guarde el archivo en /root/cuarentena
if [[ -d /root/cuarentena ]];then
  clear
else
  clear
  mkdir /root/cuarentena
fi
busqueda=$(grep -ir hack /home/* | grep "^/.*" | cut -d ":" -f1)
for archivo in $busqueda
do
  #echo $archivo
  cp $archivo /root/cuarentena
done
echo "Los archivos y directorios con la palabra hack se han copiado a la ruta /root/cuarentena"
