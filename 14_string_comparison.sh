#!/bin/bash

# 문자 비교 연산

S1=$1
S2=$2

if [ -z $S1 ]; then
	echo "첫번째 문자열이 비었습니다."
else
	if [ -z $S2 ]; then
		echo "두번째 문자열이 비었습니다."
	else 
		if [ $S1 = $S2 ]; then
			echo "두 문자열이 같습니다."
		else
			echo "두 문자열이 다릅니다."
		fi
	fi
fi

