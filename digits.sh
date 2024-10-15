#!/bin/bash
echo {1000..2000} | sed 's/ /\n/g' | { sum=0;
				       while read n;
				       do if [[ $n =~ [^0-1] ]]; then
					      echo "Wrong number..." $n
					  else
					      sum=$(($sum + $n))
					      echo "Right number!" $n
					  fi
				       done;
				       echo $sum; }
