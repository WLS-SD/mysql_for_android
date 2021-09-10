#!/bin/bash
GREEN="\e[92m"


printf "${GREEN}"
                                                                               

for name in start-mysql stop-mysql uninstall-mysql
do
	chmod u+x "${name}.sh" &&
	echo "Made '${name}.sh'has become executable successfully" ||
	echo "Failed to make '${name}.sh'has become executable (code:${?})"

                                                        

	echo "Checking to see if alias ${name} exists..."
	response=$(grep "${name}=" ~/../usr/etc/bash.bashrc)
	if [ ! -n "$response" ]
	then
		echo "Alias '${name}' does not exist"
		echo "Creating alias '${name}'..."
		echo -e "alias ${name}=\"~/${name}.sh\"" >> ~/../usr/etc/bash.bashrc &&
		echo "Alias '${name}' created successfully" ||
		echo "Failed to create alias '${name}' (code:${?})"
	else
		echo "Alias '${name}' already exists"
	fi
done
                             
                                
                
