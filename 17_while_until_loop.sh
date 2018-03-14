#!/bin/bash

# bash while loop

COUNT=6
# while loop 는 condition이 true 인 동안 (while condtion is true ) 돈다.
while [ $COUNT -gt 0 ]; do
	echo Value of count is : $COUNT
	let COUNT=COUNT-1
done

# bash until loop
# until loop는 condition이 true가 될때 까지(until condition is true) 돈다 
let COUNT=6
until [ $COUNT -lt 0 ]; do
	echo Value of count is : $COUNT
	let COUNT=COUNT-1
done
