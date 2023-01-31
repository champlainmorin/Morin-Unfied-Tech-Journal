part1=$(cat zt.txt | grep "	A	" | cut -d " " -f 1 | cut -f 1)
#echo $part1
part2=$(cat zt.txt | grep "	A	" | cut -f 4,5 | sed 's/A	//g')
#echo $part2

howmany() { echo $#; } # Gets the amount of items in the array.
howmany $part1
howmany $part2

#TODO Make a for loop to iterate over the length of part1

echo $part1 | cut -f 1 -d " "

