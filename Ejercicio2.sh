#!/bin/bash

directorio="C:\Users\franc\OneDrive - Universidad Católica del Uruguay\Escritorio\folder1"

read -p "Ingrese el patrón de búsqueda: " patron
read -p "Ingrese el nuevo nombre: " nuevo_nombre

for archivo in "$directorio"/*"$patron"*; do
    nuevo_nombre_archivo=$(echo "$archivo" | sed "s/$patron/$nuevo_nombre/")
    mv "$archivo" "$nuevo_nombre_archivo"
done

echo "Renombrado completado."