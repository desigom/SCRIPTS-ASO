#!/bin/bash
    echo " ---------- MENU -----------"
    echo "1. Crear usuario"
    echo "2. Habilitar usuario"
    echo "3. Deshabilitar usuario"
    echo "4. Cambiar permisos a un usuario"
    echo "5. Copia de seguridad del directorio"
    echo "6. Usuarios conectados actualmente"
    echo "7. Espacio libre en disco"
    echo "8. Trazar ruta"
    echo "9. Salir"

    read -p "Seleccione una opción de 1 a 9 ? " opcion

case $opcion in
        [1]* ) echo "Crear usuario"; 
            echo "Crear usuario"
            echo "Inserta el nombre del usuario nuevo:"
            read user
            adduser $user
            ;;
        [2]* ) echo "Habilitar usuario"; 
            echo "Habilitar usuario"
            echo "Inserta el nombre del usuario que desea habilitar:"
            read user1
            usermod -U $user1
            ;;
        [3]* ) echo "Deshabilitar usuario";
            echo "Deshabilitar usuario"
            echo "Inserta el nombre del usuario que desea deshabilitar:"
            read user2
            usermod -L $user2
            ;;
        [4]* ) echo "Cambiar permisos a un usuario"; 
                ./permisos.sh
            ;;
        [5]* ) echo "Copia de seguridad del directorio"; 
                ./copia-seguridad.sh
            ;;
        [6]* ) echo "Usuarios conectados actualmente";
                ./conectados.sh
            ;;
        [7]* ) echo "Espacio libre en disco"; 
            echo "Espacio en disco"
                df -h
            ;;
        [8]* ) echo "Trazar ruta"; 
            read -p "¿Hacia donde desea trazar la ruta? " ruta
                traceroute $ruta
            ;;
        [9]* ) echo "Salir"; 
                echo "Adios"
                break
            ;;
    
        * ) echo "Seleccione una Opción de 1 a 9";;
    esac
