#!/bin/bash

#-FUNCTION/S-#

printr() {
  text="$1"
  colors=("\033[1;31m" "\033[1;33m" "\033[1;32m" "\033[1;36m" "\033[1;34m" "\033[1;35m")
  reset="\033[0m"
  
  for ((i=0; i<${#text}; i++)); do
    echo -ne "${colors[i % ${#colors[@]}]}${text:i:1}"
  done
  echo -e "$reset"
}

current_date=$(date +%d-%m-%Y)

#-FUNCTION/S-END-#

target_date="31-05-2024"

if [ "$current_date" == "$target_date" ]; then
    echo "Warte Warte.. Hast du heute nicht Geburtstag?"
    sleep 3
        echo "..JA"
        sleep 2
        printr "ALLES GUTE ZUM GEBURTSTAG!!"
        sleep 20
else
   exit;
fi


#Credits to kpwn930
