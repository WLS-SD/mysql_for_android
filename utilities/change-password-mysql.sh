#!/bin/bash


#Start Mysql Server to Change Password

cd
cd mysql_for_android/core
./start-server.sh

cd
cd mysql_for_android
cd ui                                                ./stop-mysql-ui.sh

Green="\e[92m"


printf "${Green}"

echo " "
echo " "
echo " "

echo " Note :~ You Are Gonna Change Password of MySqL."
echo " "
echo " "
echo " "

LightCyan="\e[96m"


printf "${LightCyan}"

echo -n "New password: "
read -s pass1
echo -ne "\nRetype new password: "
read -s pass2
echo

if [ ! $pass1 = $pass2 ]
then
        echo "Sorry, passwords do not match."
else
        echo -e "alter user root@localhost identified by \"${pass1}\"" > setpass.sql
        mysql mysql < setpass.sql > mysqllogs.log &&
        echo "New password was successfully set." ||
        echo "Failed to set new password"
        rm setpass.sql
        if [ ! -s mysqllogs.log ]
        then
                rm mysqllogs.log
        fi
fi

YELLOW="\e[93m"


printf "${YELLOW}"

echo "Password Changed Succesfully"
echo " Your New Password is :~ $pass2 "


sleep 5
Green="\e[92m"


printf "${Green}"

echo "You have change your password  if you forget it .. to change it Just Type 'change-password-mysql'"
