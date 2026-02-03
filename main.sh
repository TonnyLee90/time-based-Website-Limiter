#!/bin/bash

while [[ true ]]
do
	read -p "Enter an URL: " url
	read -p "You entered: $url, correct? [Y/N] " response
	if [[ $response == "Y" || $response == "y" ]]; then
        	echo "$url is blocked"
		echo "127.0.0.1 $url" >> blocked_urls.txt
		break
	else
        	echo "Please, enter again."
	fi
done
