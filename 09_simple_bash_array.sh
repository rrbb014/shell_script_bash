#!/bin/bash

# 4개의 엘리먼트가 들어있는 array를 선언해보자.
ARRAY=(  'Debian Linux' 'Redhat Linux' Ubuntu Linux  )

# array의 엘리먼트 개수를 얻자
ELEMENTS=${#ARRAY[@]}

# array 각 엘리먼트 출력
# for loop
for ((i=0; i<ELEMENTS; i++)); do
	echo ${ARRAY[${i}]}
done
