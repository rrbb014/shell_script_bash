#!/bin/bash

# bash for loop
for f in $( ls /var/  ); do
	echo $f
done

for f in `seq 5 -1 1`; do
	echo $f
done

# Command Line에서도 for loop 돌아갑니다.
# for f in $( ls /var/ ); do echo $f; done
# backtick도 가능하겠죠.
