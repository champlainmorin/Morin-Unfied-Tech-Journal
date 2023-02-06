# This script gets all the A records information from the zt.txt file

part1=$(cat zt.txt | grep "	A	" | cut -d " " -f 1 | cut -f 1)
#echo $part1
part2=$(cat zt.txt | grep "	A	" | cut -f 4,5 | sed 's/A	//g')
#echo $part2

howmany() { echo $#; } # Gets the amount of items in the array.
#howmany $part1
part3=$(howmany $part2)
#echo "$part3"

argsPassed() { echo $@; }
part4=$(argsPassed $part1)


#echo $part1 | cut -f 1 -d " "

for ip in $(seq 1 $part3); do 
	test=$(echo $part1 | cut -d " " -f $ip)
	test2=$(echo $part2 | cut -d " " -f $ip)
	echo $test,$test2
	#echo "hello"
done

