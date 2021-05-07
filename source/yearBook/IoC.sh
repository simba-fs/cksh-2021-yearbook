#!/bin/bash

echo --- > $2
echo title: yearBook >> $2
echo date: 2021-05-07 10:57:33 >> $2
echo --- >> $2

for i in $(ls $1); do
	echo "[$i]($1/$i)  " >> $2
done
