#!/bin/bash

origen="C:\Users\franc\OneDrive - Universidad Católica del Uruguay\Escritorio\folder1"
respaldo="C:\Users\franc\OneDrive - Universidad Católica del Uruguay\Escritorio\folder2"

read -p "¿Estás seguro de que deseas respaldar los archivos de $origen en $respaldo? (s/n): " confirmacion

if [ "$confirmacion" = "s" ]; then
    cp -R "$origen" "$respaldo"
    echo "¡Respaldo completado!"
else
    echo "Operación cancelada."
fi