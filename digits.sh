#!/bin/bash
echo {1000..2000} | sed 's/ /\n/g' | { sum=0;
				       while read n;
				       do if [[ $n =~ ^[01]+$ ]]; then
					      echo "Right number!" $n
					      sum=$(($sum + $n))
					  else
					      echo "Wrong number..." $n
					  fi
				       done;
				       echo $sum; }
