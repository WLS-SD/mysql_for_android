#!/bin/bash
cd
cd mysql_for_android/ui
./stop-mysql-ui.sh

echo "MySql/MariaDb Server is stopping.........."
cd
cd mysql_for_android
cd core
sleep 0.2

./stop-server.sh

echo "MariaDb / MySql has Stopped Successfully"

Light_Magenta="\e[95m"


sleep 0.2

printf "${Light_Magenta}"
echo "MySql Server Status :~ Deactivated / Database Stopped "

exit
