#!/bin/bash

while [[ true ]]
do
	read -p "Enter an URL: " url
	read -p "You entered: $url, correct? [Y/N] " response
	if [[ $response == "Y" || $response == "y" ]]; then
        	echo "$url is blocked"
		break
	else
        	echo "Please, enter again."
	fi
done
