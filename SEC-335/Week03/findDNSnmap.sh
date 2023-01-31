#! /bin/bash

hosts=$1

result="$(sudo nmap -Pn 10.0.5.0/24 --system-dns -p 53 | grep open -B 4)"
echo $result | grep -E "10.0.5.[0-9]|10.0.5.[0-9][0-9]" -o | awk '{print $0",53"}' > dns-servers2.txt

#echo $part1

#sudo nmap -Pn 10.0.5.0/24 --system-dns -p 53 | grep open -B 4

#for ip in $(seq 1 255); do
#	sudo nmap -Pn 10.0.5.$ip --system-dns -p 53 | grep open -B 4
	#sudo nmap -Pn $host --dns-servers 10.0.5.22
	#e="$(nmap -Pn $host --dns-servers 10.0.5.22)"
	#echo $e
	#if [ $e -eq 53 2>/dev/null ]; then echo "$host,$e"; fi
#done
