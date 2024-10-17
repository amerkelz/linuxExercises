#!/bin/bash

# Removes all files in directory <dir> with a size greater than <n> bytes
if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n> that removes all files in directory dir larger than <n> bytes" 1>&2
    exit 0
fi

dir=$1
n=$2c # add c for bytes
find $dir -size $n -type f -exec rm {} \;
