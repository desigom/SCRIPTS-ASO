#!/bin/bash

# Cantidad de usuarios conectados
uconn=`who | wc -l | sed 's/^ *//g'`

# Cantidad de usuarios reales
ureal=`who | cut -f1 -d ' ' | sort -u | wc -l | sed 's/^ *//g'`

# Mostrar usuarios con el numero de veces que esta conectado
who | cut -f1 -d ' ' | uniq -c | sort | sed 's/^ *//g'

echo "Usuarios conectados: $uconn"
echo "Usuarios reales: $ureal"
