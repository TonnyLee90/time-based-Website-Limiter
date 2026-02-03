
#!/bin/bash

while [[ true ]]
do
	read -p "Enter an URL: " url
	read -p "You entered: $url, correct? [Y/N] " response
	if [[ $response == "Y" || $response == "y" ]]; then
		echo "127.0.0.1 $url" >> blocked_urls.txt
		break
	else
        	echo "Please, enter again."
	fi
done

#timer
read -p "How long should the hosts be blocked (in seconds)? " time
echo "The hosts will be avaliable after $time second(s)"
echo "$url is blocked"
# when timeed out, remove the url from blocked_urls
sleep $time
sed -i "/127.0.0.1 $url/d" blocked_urls.txt
echo "$url is removed"
