#!/bin/bash

cd
cd mysql_for_android/ui
echo "      "
./stop-mysql-ui.sh
cd

echo "    "

Green="\e[92m"
printf "${Green}"

echo " Do You Really Want to Uninstall Mysql & Its all  Dependencies ?"
echo " {Y = Yes , N = No}"
echo -n " (Y/N) :~ "
read user


if [ $user = Y ]
then

GREEN="\e[92m"

printf "${GREEN}"

rm -rf mysql_for_android

rm -rf start-mysql.sh

rm -rf stop-mysql.sh

rm -rf update-mysql.sh start-server.sh change-password-mysql.sh


apt --purge remove mariadb -y


apt --purge remove figlet -y

rm -rf uninstall-mysql.sh

Light_Magenta="\e[95m"
printf "${Light_Magenta}"

echo "You Have Successfully Uninstalled MariaDb/MySQL and it's all Dependencies."



elif [ $user = y ]
then

GREEN="\e[92m"

printf "${GREEN}"
rm -rf mysql_for_android

rm -rf start-mysql.sh

rm -rf stop-mysql.sh

rm -rf update-mysql.sh start-server.sh change-password-mysql.sh


apt --purge remove mariadb -y


apt --purge remove figlet -y

rm -rf uninstall-mysql.sh

Light_Magenta="\e[95m"
printf "${Light_Magenta}"

echo "You Have Successfully Uninstalled MariaDb/MySQL and it's all Dependencies."





elif [ $user = N ]
then
Light_Magenta="\e[95m"
printf "${Light_Magenta}"
echo " Uninstalling Process Aborted !!! "


elif [ $user = n ]
then
Light_Magenta="\e[95m"
printf "${Light_Magenta}"
echo " Uninstalling Process Aborted !!! "



else


Light_Magenta="\e[95m"
printf "${Light_Magenta}"
echo "You Can Only Choose Y/N , Y is for Yes & N is for No"


fi
