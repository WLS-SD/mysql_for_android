#!/bin/bash

cd


rm -rf mysql_for_android 

rm -rf start-mysql.sh

rm -rf stop-mysql.sh

rm -rf update-mysql.sh start-server.sh change-password-mysql.sh


apt --purge remove mariadb -y


apt --purge remove figlet -y

rm -rf uninstall-mysql.sh

GREEN="\e[92m"

printf "${GREEN}"


echo "You Have Successfully Uninstalled MariaDb/MySQL and it's all Dependencies."

