#!/bin/bash
# pflint Tue 10 Feb 2015 09:06:29 AM EST  
# checks validity of file...   
# 
open=0
closed=0
# out="0"
declare -i gout
gout=0
# grep "text:list" $1 |grep -v item |while read line; 
# grep "text:list" $1 |
cat $1 | grep -v '^$' |while read line; 
do 
	#debug 
	echo $line; 
	glyph=$(echo $line |cut -c 1)
	# echo -n $glyph 
	if [ $glyph = "(" ]; then ((++gout)); echo $gout; fi
	if [ $glyph = ")" ]; then ((--gout)); echo $gout; fi
	# export $out
done | tail -1
# echo "Tada ",$open,$closed,$out

