#! /bin/bash

hosttxt=$1
porttxt=$2

echo "Data is formatted via host,port"
for host in $(cat $hosttxt); do
	for port in $(cat $porttxt); do
		timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port" && if [ $port -eq 22 ]; then echo "SSH might be open \n"; fi
	done
done

# Code additions written by Zachary Morin
# Added a suggestion of the service based on port number.
