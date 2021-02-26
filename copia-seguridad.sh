#!/bin/bash
# Creación de variables
# Fecha y hora
DATE=$(date +%Y-%m-%d-%H%M%S)
# Lugar donde guardamos la copia
BACKUP_DIR="/bin/backup"
# Carpeta de la que hacemos la copia
SOURCE="$HOME"

# Realizamos la copia con el comando tar
tar -cvzpf backup-$DATE.tar.gz $SOURCE
