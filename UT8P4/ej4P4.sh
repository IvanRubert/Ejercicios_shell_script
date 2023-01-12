#!/bin/bash
#Tarea para que queden reflejados todos los reinicios en /var/log/reinicios.txt
last reboot -n 1 | grep "^reboot" >> /var/log/reinicios.txt
