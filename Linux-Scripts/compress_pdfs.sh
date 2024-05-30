#!/bin/bash

# Obtener el directorio actual
current_dir="$(pwd)"
dest_dir="$current_dir/compressed"

# Crear la carpeta "compressed" si no existe
mkdir -p "$dest_dir"

# Iterar sobre todos los archivos PDF en el directorio actual
for file in "$current_dir"/*.pdf; do
    # Obtener el nombre del archivo sin el directorio
    filename=$(basename "$file")
    
    # Optimizar el PDF con la máxima compresión
    pdfcpu optimize -mode=best "$file" "$dest_dir/$filename"
done

echo "Optimización por lotes completada."
