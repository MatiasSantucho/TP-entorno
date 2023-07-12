#!/bin/bash

while true; do
  clear
  echo -e "==== Menu ====\n1. Descargar imagenes\n2. Descomprimir imagenes\n3. Generar imagenes y sumas de verificacion\n4. Procesar imagenes\n5. Comprimir imagenes procesadas\n6. Salir\n=============="
  read -p "Elige una opcion: " opcion

  case $opcion in
    1)
      echo "Descargando imagenes..."
      ./descargar.sh
      ;;
    2)
      echo "Descomprimiendo imagenes..."
      ./descomprimir.sh
      ;;
    3)
      echo "Generando imagenes y sumas de verificacion..."
      ./generar.sh
      ;;
    4)
      echo "Procesando imagenes..."
      ./procesar.sh
      ;;
    5)
      echo "Comprimiendo imagenes procesadas..."
      ./comprimir.sh
      ;;
    6)
      echo "Saliendo del programa."
      exit 0
      ;;
    *)
      echo "Opción invalida. Por favor, elige una opción valida."
      ;;
  esac

  read -p "Presiona Enter para continuar..."
done
