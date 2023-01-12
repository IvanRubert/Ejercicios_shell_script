#!/bin/bash
#Escriba en el fichero /tmp/usuarios una línea con la fecha y otra con el número
#de usuarios distintos que están conectados enese momento cada dos minutos

date >> /tmp/usuarios.txt
who | wc -l >> /tmp/usuarios.txt
