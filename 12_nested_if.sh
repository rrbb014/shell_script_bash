#!/bin/bash

# 변수 선언 
choice=4

# stdout 출력
echo "1. Bash"
echo "2. Scripting"
echo "3. Tutorial"
echo -n "Please choose a word [1, 2 or 3]? "

# 선택지가 4가 될때까지 루프
# while

while [ $choice -eq 4 ] ; do 

    # 사용자 입력 읽어들임
	read choice
	# nested if/else
	if [ $choice -eq 1 ]; then
		echo "Bash를 고르셨군요."
	else
		if [ $choice -eq 2 ]; then
			echo "Scripting을 고르셨군요."
		else
			if [ $choice -eq 3 ]; then
				echo "Tutorial을 고르셨군요."
			else
				echo "1~3사이의 숫자를 선택해주세요."	
				echo "1. Bash"
				echo "2. Scripting"
				echo "3. Tutorial"
				echo -n "Please choose a word [1, 2 or 3]? "
				choice=4
			fi
		fi
	fi
done

