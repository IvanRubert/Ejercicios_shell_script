#!/bin/bash
#Script que busque cualquier fichero que pueda ser modificado porcualquier 
#usuario (--- --- rwx) y guarde la lista de ficheros con la ruta exacta en
#el archivo archivos_peligrosos.txt

ls -lR /home/* | egrep "^.......rwx" > archivos_peligrosos.txt
echo "Contenido de fichero archivos_peligrosos.txt"
cat archivos_peligrosos.txt | more
