#!/bin/bash

#Read <column> from [file.csv] and write its mean

if [[ $1 -eq "" ]]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
fi

col_num=$1

if [[ $2 == "" ]]; then
    file_name=/dev/stdin
else
    file_name=$2
fi

tail -n +2 $file_name | cut -d ',' -f $col_num | awk '{total += $1} {count += 1} END {print total/count}'

