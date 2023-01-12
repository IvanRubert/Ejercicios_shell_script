#!/bin/bash
#Script que muestre la lista de los últimos usuarios que iniciaronsesión,
#incluidas las direcciones IP Origen.

last -i | egrep '[0-9]{2,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
