#!/bin/bash
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d "," -f 7 | { sum=0; i=0;  while read n; do sum=$(($sum + $n)) i=$((i+1)); done; avg=$(echo "$sum / $i" | bc -l); echo $avg; } 
