#!/bin/bash
#initial permission provider & setup Executer


#Termux Storage Permission
#termux-setup-storage


#Permission_Provider
cd
cd mysql_for_android
cd utilities
chmod +x *


cd

cd mysql_for_android
cd core
chmod +x *
cp start-server.sh $HOME


cd
cd mysql_for_android
cd ui
chmod +x *


#Setup_Executer

cd
cd mysql_for_android
cd utilities
./setup.sh
