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


cols=$(tput cols)

rows=$(tput lines)

cat_height=3

top_padding=$(( (rows - cat_height) / 2 ))
left_padding=$(( (cols - 7) / 2 ))

while true
do
    clear
    
    tput cup $top_padding $left_padding
    
    if [[ $(( $(date +%s%N) / 100000000 % 2 )) -eq 0 ]]
    then
        echo "$cat_art1"
    else
        echo "$cat_art2"
    fi
    sleep 0.5
done

