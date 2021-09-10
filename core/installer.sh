#!/bin/bash

echologs()
{
	echo $(date +"%d/%m/%Y %X: ") "$@" >> logs.log
}

echo -n "" > logs.log

#Aliases
cd
cd utilities

./Aliases.sh


echologs "Checking to see if package 'MariaDB' is installed..."

dpkg -s mariadb &> /dev/null
if [ $? -eq 1 ]
then
        echologs "Package 'MariaDB' is not installed"
	echologs "Installing..."
        pkg install mariadb -y

        code=$?

        if [ $code -eq 100 ]
        then
                echologs "Could not locate package 'MariaDB'"
                echologs "Failed to install package 'MariaDB'"
        elif [ $code -eq 0 ]
        then
                dpkg -s mariadb &> /dev/null
                if [ $? -eq 0 ]
                then
                        echologs "Installation complete"
			~/start-server.sh &&
			echologs "MySQL server started successfully" ||
			echologs "MySQL server failed to start (code:${?})"
                else
			echologs "Package installation command executed but package 'MariaDB' was not installed"
                fi
        else
                echologs "Some unkown error occured during installation (code:${code})"
        fi

else
        echologs "Package 'MariaDB' is already installed"
	~/start-server.sh &&
	echologs "MySQL server started successfully" ||
	echologs "MySQL server failed to start (code:${?})"
fi

pkg clean

#termux-wake-lock &&
#echologs "Acquired wakelock" ||
#echologs "Failed to acquire wakelock (code:${?})"


GREEN="\e[92m"


printf "${GREEN}"

echo "MySQL installed successfully"
