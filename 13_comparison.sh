#!/bin/bash

# 비교 연산자
# 정수 선언

NUM1=$1
NUM2=$2

if [ $NUM1 -eq $NUM2 ]; then
	echo "두 수가 같다."
else 
	if [ $NUM1 -lt $NUM2 ]; then
		echo "$NUM1이 $NUM2보다 작다."
	else
		if [ $NUM1 -gt $NUM2 ]; then
			echo "$NUM1이 $NUM2보다 크다."
		fi
	fi
fi

