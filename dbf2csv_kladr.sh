#!/bin/bash

for file in dbf/*.*
do
        f=$(basename $file)
        file2=${f%.*}
        echo "экспортируется файл $file в csv/$file2.csv"
        dbview --browse --delimiter ";" $file | iconv -c -f 866 -t UTF-8 > csv/$file2.csv
done

