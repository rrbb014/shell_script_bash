#/bin/bash
# Use predefined variables to access passed arguments
echo $1 $2 $3 ' -> echo $1 $2 $3'

# special array에 cli에서 입력한 arguments들을 저장할 수 있음.
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]} ' 

# $@로 모든 arguements들을 한번에 출력하기 
echo $@ ' -> echo $@'

# $# 변수를 사용해 변수 출력
# bash script로 입력받은 args의 갯수가 넘겨짐
echo Number of arguments passed: $# ' -> echo NUmber of arguments passed: $#'
