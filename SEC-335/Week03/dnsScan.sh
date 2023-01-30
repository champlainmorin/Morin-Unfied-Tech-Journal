#! /bin/bash

first_three_octets=$1
port=$2

for ip in $(seq 1 255); do
	timeout .1 bash -c "echo >/dev/tcp/$first_three_octets.$ip/$port" 2>/dev/null && echo "$first_three_octets.$ip,$port"
done

# Code additions written by Zachary Morin
# Added a suggestion of the service based on port number.
