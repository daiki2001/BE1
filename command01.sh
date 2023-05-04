#!/bin/bash

read NUMBER

i=1
while [ $i -lt `expr $NUMBER + 1` ]
do
	touch `printf "kamata%03d.txt" $i`
        i=`expr $i + 1`
done
