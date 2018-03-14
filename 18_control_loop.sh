#!/bin/bash

DIR="."

# while loop안에 read 를 넣음으로서 STDOUT인 find command의 결과물을
# STDIN으로 받아 제어한다.
find $DIR -type f | while read file; do
# POSIX 클래스 [:space:]을 기입함으로서 
# 파일명 안에 공백을 찾아보자.
	if [[ "$file" = *[[:space:]]* ]]; then
		# space를 '_'로 대체하고 파일명을 변경
		mv "$file" `echo $file | tr ' ' '_'`
	fi;
# line 5 while loop exit
done

