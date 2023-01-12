#!/bin/bash
#Escribir cada 10 minutos los siguientes datos en /var/log/historial.txt

#13:37:44 up 20 days, 59 min, 1 user, load average: 0,00, 0,00, 0,00 USER TTY FROM
#LOGIN@ IDLE JCPU PCPU WHAT root pts/0 36.pool85-57-33. 13:37 0.00s 0.00s 0.00s w
w >> /var/log/historial.txt
