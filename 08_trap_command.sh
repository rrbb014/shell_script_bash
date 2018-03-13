#!/bin/bash

# bash trap command
trap bashtrap INT

# clear screen command
clear

# bashtrap 함수는 CTRL-C 를 눌렀을때 실행됨
bashtrap() {
    echo "CTRL+C 감지됨! ... executing bash trap!"
}

# for loop from 1/10 to 10/10
for a in `seq 1 10`; do
	echo "$a/10 to Exit."
	sleep 1;
done

echo "Exit Bash Trap Example!"
