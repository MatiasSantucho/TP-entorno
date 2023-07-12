#!/bin/bash

# Ruta de la carpeta con las imagenes descomprimidas
ruta_imagenes_descomprimidas="./output/descomprimido"

# Ruta de la carpeta de salida para las imagenes procesadas
ruta_imagenes_procesadas="./output/procesadas"

# Crear la carpeta de salida si no existe
mkdir -p "$ruta_imagenes_procesadas"

# Recortar las imagenes a 512x512 utilizando ImageMagick
echo "Procesando imagenes..."
for imagen in "$ruta_imagenes_descomprimidas"/*.jpg; do
  nombre_imagen=$(basename "$imagen")
  nombre_persona="${nombre_imagen%.*}"

  # Verificar si el nombre de la persona es valido
  if [[ "$nombre_persona" =~ ^[A-Z][a-z]+$ ]]; then
    # Recortar la imagen a 512x512 y guardarla en la carpeta de salida
    convert "$imagen" -gravity center -resize 512x512+0+0 -extent 512x512 "$ruta_imagenes_procesadas/$nombre_imagen"
  fi
done

echo "Procesamiento completado correctamente."
