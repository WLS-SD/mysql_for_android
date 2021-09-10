#!/bin/bash

apt install figlet -y
cd core
cp start-mysql.sh stop-mysql.sh uninstall-mysql.sh $HOME


cd

chmod +x start-mysql.sh stop-mysql.sh uninstall-mysql.sh

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

echo "Now You Can Start MySql using Commands Below"

echo " 1:~ cd "
echo " 2:~ start-mysql "
echo "3:~ stop-mysql "
echo "4:~ uninstall-mysql"
echo " command 2 is used to start MySql"
echo " Command 3 is used to Stop MySql"
echo " Command 4 is used to uninstall MySql"

