#!/bin/bash
#Copia de seguridad cada dia a la 1:00

#Si es domingo se genera una copia completa de los directorios /home, /etc y /root en la carpeta /copia_seguridad/completa

#Si es cualquier otro día se realiza una copia diaria del directorio /etc y se guarda en la carpeta
# /copia_seguridad_incremental/mes_dia_ano (donde se indica la fecha del sistema)

#Las copias de seguridad se realizan con el comando tar

#Siempre se genera una copia en la misma carpeta se genera el fichero fecha.txt que contiene la hora exacta del sistema.
week=`date +%A`
fecha=`date +%m_%d_%y`
if [[ -d /copia_seguridad ]]; then
  if [[ -d /copia_seguridad/completa ]]; then
    sleep 1
  else
    mkdir /copia_seguridad/completa
  fi
else
  mkdir /copia_seguridad
  mkdir /copia_seguridad/completa
fi

if [[ -d /copia_seguridad_incremental ]]; then
  if [[ -d /copia_seguridad_incremental/$fecha && $week != "domingo" ]]; then
    sleep 1
  else
    mkdir /copia_seguridad_incremental/$fecha
  fi
else
  mkdir /copia_seguridad_incremental
  mkdir /copia_seguridad_incremental/$fecha
fi

if [[ $week == "domingo" ]]; then
  echo "Iniciando copia de seguridad"
  tar -czpf /copia_seguridad/completa/backup-$fecha.tar.gz /home /etc /root
  date >> /copia_seguridad/completa/fecha.txt
  echo "Copia de seguridad completa"
else
  echo "Iniciando copia de seguridad"
  tar -czpf /copia_seguridad_incremental/$fecha/backup_incremental.tar.gz /etc
  date >> /copia_seguridad_incremental/$fecha/fecha.txt
  echo "Copia de seguridad completa"
fi
