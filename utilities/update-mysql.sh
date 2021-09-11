#!/bin/bash

cd


rm -rf mysql_for_android

rm -rf start-mysql.sh

rm -rf stop-mysql.sh



rm -rf uninstall-mysql.sh



git clone https://github.com/WLS-SD/mysql_for_android

cd

cd mysql_for_android

chmod +x ipp_se.sh

./ipp_se.sh






printf "${GREEN}"


echo "Congratulations You Have Successfully Updated Your MySql Server Through 'https://github.com/WLS-SD/mysql_for_android' Repository"

echo "Please Enter 'exit' Command to Exit Termux App and ReOpen Termux App and  enjoy your MySql/MariaDb"
