#!/bin/bash

cd
cd mysql_for_android/ui
./start-mysql-ui.sh


cd
cd mysql_for_android
cd core

./start-server.sh

sleep 0.5

Light_Magenta="\e[95m"
printf "${Light_Magenta}"

echo "MySql Server Status :~ Activated / Database Started"
sleep 0.2

./start-client.sh

