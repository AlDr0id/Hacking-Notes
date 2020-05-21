#!/bin/bash

clear
echo "Las pantallas se van limpiando a cada peticion, guarda lo que necesites antes de continuar a la siguiente peticion"
echo -e "\nPulse ENTER para seguir\n"
read A

clear
echo -e "\n\n***************Peticion GET*****************\n\n"
curl --insecure -i -G $1 #Hacemos GET

echo -e "\n\n###############################################################"
echo "###############################################################"
echo -e "###############################################################\n"
echo -e "\nPulse ENTER para seguir\n"
read A


clear
echo -e "\n\n***************Peticion HEAD*****************\n\n"
curl --insecure -i -I $1 #Hacemos HEAD

echo -e "\n\n###############################################################"
echo "###############################################################"
echo -e "###############################################################\n"
echo -e "\nPulse ENTER para seguir\n"
read A


clear
echo -e "\n\n***************Peticion TRACE*****************\n\n"
curl --insecure -i -X TRACE $1 #Hacemos TRACE

echo -e "\n\n###############################################################"
echo "###############################################################"
echo -e "###############################################################\n"
echo -e "\nPulse ENTER para seguir\n"
read A


clear
echo -e "\n\n***************Peticion OPTIONS*****************\n\n"
curl --insecure -i -X OPTIONS $1 #Hacemos OPTIONS

echo -e "\n\n###############################################################"
echo "###############################################################"
echo -e "###############################################################\n"
echo -e "\nPulse ENTER para seguir\n"
read A


clear
echo -e "\n\n***************Peticion PUT*****************\n\n"
curl --insecure -i -X PUT $1 #Hacemos PUT

echo -e "\n\n###############################################################"
echo "###############################################################"
echo -e "###############################################################\n"
echo -e "\nPulse ENTER para seguir\n"
read A


clear
echo -e "\n\n***************Peticion POST*****************\n\n"
curl --insecure -i -X POST $1 #Hacemos POST
echo -e "\n\n\n"
