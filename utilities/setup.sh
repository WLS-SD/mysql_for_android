#!/bin/bash

apt install figlet -y
cd core
cp start-mysql.sh stop-mysql.sh uninstall-mysql.sh update-mysql.sh $HOME


cd

chmod +x start-mysql.sh stop-mysql.sh uninstall-mysql.sh update-mysql.sh

cd
cd mysql_for_android
cd core
chmod +x *


./installer.sh



./start-server.sh

./setpass.sh

#./start-client.sh

#./start-client.sh
./stop-server.sh
#./stop-mysql.sh


GREEN="\e[96m"


printf "${GREEN}"


echo "MySql Has installed SuccessFully "

echo "Now You Can Use MySql using Commands Below"

echo " 1:~ exit"
echo " 2:~ start-mysql "
echo "3:~ stop-mysql "
echo "4:~ uninstall-mysql"
echo "5:~ update-mysql.sh"
echo " Command 1 is to exit Termux App."
echo " After Exiting Termux App Please Reopen Termux App and Follow Next Commands."
echo " command 2 is used to Start MySql."
echo " Command 3 is used to Stop MySql."
echo " Command 4 is used to Uninstall MySql."
echo " Command 5 is used to Update MySql."


