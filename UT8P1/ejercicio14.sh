#!/bin/bash
#Listado de directorio absoluto introducido por parametros
ls -lh $1
echo -e "\nNumero de entradas:"
ls $1 | wc -l
