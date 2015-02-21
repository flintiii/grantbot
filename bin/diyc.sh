#!/bin/bash 
#debug -x
# pflint Tue 10 Feb 2015 09:06:29 AM EST  
# checks parenthetical validity of a pyx file...   
# 
declare -i gout
#debug 
gout=0
#debut cat $1 | while read line; # gets line 
while read line; # gets line 
do 
	#debug echo $line; 
	glyph=$(echo $line |cut -c 1) ;
	#debug echo -n $glyph 
	if [ "$glyph" = "(" ]; then ((++gout)); echo $gout; fi
	if [ "$glyph" = ")" ]; then ((--gout)); echo $gout; fi
	# export $out
#debug  done | tail -1 # prints the inter zero if the parenthesis balance.
#debug done; echo $gout
done <<<$1
echo $gout
