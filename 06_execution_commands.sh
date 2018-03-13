#!/bin/bash
# backtick을 사용해서 shell command를 실행해보자
# uname은 현재 OS에 관한 정보를 제공하는 프로그램
# -o 옵션은 OS 출력 
echo `uname -vmpo`

# backtick없이 shell command 실행
# 그냥 출력
echo uname -o
