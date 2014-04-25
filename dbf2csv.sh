#!/bin/bash

for file in dbf/*.*
do
	f=$(basename $file)
	file2=${f%.*}
	echo "export file $file to csv/$file2.csv"
	dbview --browse --delimiter ";" $file > csv/$file2.csv
done
