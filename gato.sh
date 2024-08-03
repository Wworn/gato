#!/bin/bash

# gato hecho por wr3nch
cat_art1="
  /\_/\  
 ( o.o ) 
  > ^ <  
"

cat_art2="
  /\_/\  
 ( ^.^ ) 
  > ^ <  
"

# Obtener el ancho de la terminal
cols=$(tput cols)
# Obtener el alto de la terminal
rows=$(tput lines)
# Número de líneas del arte ASCII del gato
cat_height=3

# Calcular el espacio superior e izquierdo para centrar el gato
top_padding=$(( (rows - cat_height) / 2 ))
left_padding=$(( (cols - 7) / 2 ))

# Mostrar el gato "bailando" en el centro de la terminal
while true
do
    clear
    # Mover el cursor a la posición de la parte superior del gato
    tput cup $top_padding $left_padding
    # Alternar entre las dos poses
    if [[ $(( $(date +%s%N) / 100000000 % 2 )) -eq 0 ]]
    then
        echo "$cat_art1"
    else
        echo "$cat_art2"
    fi
    sleep 0.5
done

