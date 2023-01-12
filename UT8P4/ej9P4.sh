#!/bin/bash
#Cada vez que se ejecute genere una copia de seguridad del directorio /etc en el
#fichero /root/copia_etc_fecha.tgz (indicando la fecha cuándo se ha generado la
#copia de seguridad)
fecha=`date +%d-%m-%Y`
rsync -az /etc /root/copia_etc_$fecha.tgz
