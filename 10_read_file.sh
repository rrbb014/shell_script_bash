#!/bin/bash

# Array 선언
declare -a ARRAY

# standard input을 file descriptor 10번과 링크
exec 10<&0

# 인자로 받은 파일을 standard input으로 redirection
exec < $1
let count=0

while read LINE; do
	ARRAY[$count]=$LINE
	((count++))
done

echo Number of elements : ${#ARRAY[@]}
# echo array's content
echo ${ARRAY[@]}

# standard input을 file descriptor 10번에서 0번으로 다시 교체
# 그리고 file descriptor 10번은 초기
exec 0<&10 10<&-
