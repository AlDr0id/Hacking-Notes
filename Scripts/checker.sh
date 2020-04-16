#!/bin/bash

# Uso: ./checker.sh <URL sin / final> <directorios>

for line in $(cat $2 | cut -d "(" -f 1);
  do
    url=$1$line

    echo -e "\n\n###############################################################"
    echo "####### Mostrando "$url" #######"
    echo -e "###############################################################\n"
    echo -e "\nPulse ENTER para seguir\n"
    read A

    curl -i -G $url

    echo -e "\n\n###############################################################"
    echo "###############################################################"
    echo -e "###############################################################\n"
    echo -e "\nPulse ENTER para seguir\n"
    read A
done
