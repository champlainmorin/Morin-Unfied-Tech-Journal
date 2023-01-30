#! /bin/bash

first_three_octets=$1
dns_ip=$2

for ip in $(seq 1 255); do
	nslookup $first_three_octets.$ip $2 | grep name
done
