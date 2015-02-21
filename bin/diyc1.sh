#!/bin/bash
#debug -x
# pflint Tue 10 Feb 2015 09:06:29 AM EST
# checks parenthetical validity of a pyx file...
#
#debug declare -i gout
#debug
gout=0
#debug cat $1 | while read line; # gets line
#debug
while read line; # gets line
do
	#debug echo $line;
	glyph=$(echo $line |cut -c 1) ;
	#debug echo -n $glyph
	if [ "$glyph" = "(" ]; then ((++gout)); fi # echo $gout; fi
	if [ "$glyph" = ")" ]; then ((--gout)); fi # echo $gout; fi
	# export $out
#debug done; echo $gout
#debug done #| tail -1 # prints the inter zero if the parenthesis balance.
#debug
done < $1;echo $gout
