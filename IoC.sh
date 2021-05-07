#!/bin/bash

echo --- > $2
echo title: yearBook >> $2
echo date: 2021-05-07 10:57:33 >> $2
echo --- >> $2

for i in $(ls $1); do
	# jpg
	if  [[ "${i##*.}" == "jpg" ]] ; then
		echo "![$i]($1/$i)  " >> $2
		continue
	fi

	# exclude index.md
	if [[ "$i" != "index.md" ]]; then 
		echo "[$i]($1/$i)  " >> $2
		continue
	fi

done
