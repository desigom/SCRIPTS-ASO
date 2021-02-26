#!/bin/bash
clear
read -p "Introduzca el nombre del archivo: " NOMBRE
if test -e $HOME/$NOMBRE ; then

    if test -r $HOME/$NOMBRE ; then
        echo "Tiene permiso de lectura"
    else
        echo "No tiene permiso de lectura"
    fi
    
    if test -w $HOME/$NOMBRE ; then
        echo "Tiene permiso de escritura"
    else
        echo "No tiene permiso de escritura"
    fi
    
    if test -x $HOME/$NOMBRE ; then
        echo "Tiene permiso de ejecución"
    else
        echo "No tiene permiso de ejecución"
    fi
    
    read -n 1 -p "Quiere modificar los permisos (s/n): " OPCION
    echo
    
    if [ $OPCION = "S" ] || [ $OPCION = "s" ]; then
    
        read -n 1 -p "Quiere permiso de lectura (s/n): " OP_READ
        echo
        if [ $OP_READ = "S" ] || [ $OP_READ = "s" ]; then
            chmod u+r $HOME/$NOMBRE
        else
            chmod u-r $HOME/$NOMBRE
        fi
        
        read -n 1 -p "Quiere permiso de escritura (s/n) :" OP_WRITE
        echo
        
        if [ $OP_WRITE = "S" ] || [ $OP_WRITE = "s" ]; then
            chmod u+w $HOME/$NOMBRE
        else
            chmod u-w $HOME/$NOMBRE
        fi
        
        read -n 1 -p "Quiere permiso de ejecución (s/n) :" OP_EXECUTE
        echo
        
        if [ $OP_EXECUTE = "S" ] || [ $OP_EXECUTE = "s" ]; then
            chmod u+x $HOME/$NOMBRE
        else
            chmod u-x $HOME/$NOMBRE
        fi
    fi
else
    echo "No existe el fichero"
fi
