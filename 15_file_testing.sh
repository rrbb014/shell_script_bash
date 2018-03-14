#!/bin/bash

TARGET_FILE_01='01_hello_world.sh'
TARGET_DIR_01='/backup/'

# -d는 디렉토리 존재여부
if [ -d $TARGET_FILE_01 ]; then
	echo "$TARGET_FILE_01 디렉토리가 존재합니다."	
else
	if [ -d $TARGET_DIR_01 ]; then
		echo "$TARGET_DIR_01 디렉토리가 존재합니다." 
	else
		if [ -f $TARGET_FILE_01 ]; then
			echo "$TARGET_FILE_01 파일이 존재합니다."
		fi
	fi
fi

if [ -w $TARGET_FILE_01 ]; then
	echo "$TARGET_FILE_01 은 writable합니다."
else
	echo "$TARGET_FILE_01은 writable하지않습니다."
fi

if [ -x $TARGET_FILE_01 ]; then
	echo "$TARGET_FILE_01은 executable합니다."
else
	echo "$TARGET_FILE_01은 executable하지않습니다."
fi
