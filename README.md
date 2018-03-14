# Shell_Script_Basic

Let's imitate and learn shell script basics.

reference: https://linuxconfig.org/bash-scripting-tutorial

### Structures
```
.
├── 01_hello_world.sh
├── 02_compression.sh
├── 03_variable_and_backup.sh
├── 04_global_local_variables.sh
├── 05_passing_args.sh
├── 06_execution_commands.sh
├── 07_read_stdin.sh
├── 08_trap_command.sh
├── 09_simple_bash_array.sh
├── 10_read_file.sh
├── 11_if_else_statements.sh
├── 12_nested_if.sh
├── 13_comparn.sh
├─  14_string_comparison.sh
├─  15_file_testing.sh
├─  16_for_loop.sh
├─  17_while_until_loop.sh
├─  18_control_loop.sh
├─  19_functions.sh
├─  20_select.sh
├─  README.md
├── sample.txt
```

### Shebang
```
$ which bash
#!/bin/bash
```

### Declare Variable and print it
```
# 01_hello_world.sh
VAR="hello world"
echo $VAR
```

### Define Function

```
# 04_global_local_variables.sh
# 19_functions.sh

function __function_name__ {
    ...
	...
}

# Call function
__function_name__ 

```


### Passing arguments
```
$1 $2 $3 # 들어온 순서대로 받음

args=("$@") # array에 담고
${args[0]} ${args[1]} ...   # 인덱스로 불러오기

echo $@  # arguments array 한번에 출력

echo $#  # 받은 arguments 개수 출력
```

### Use Backtick for execute shell command
```
echo `uname -o`  # uname은 현재 시스템 정보를 알려주는 command
```

### Standard Input
```
# 07_read_stdin.sh

# echo -e 와 echo 는 \c를 지원하느냐 하지않느냐의 차이.
# \c는 줄바꿈을 하지않음.
echo -e "단어를 입력해주세요 >> \c"
read word  # <---- 입력받는 부분
echo "입력한 단어는 $word 입니다."
read word1 word2  # <---- 두 단어를 받음

read
echo $REPLY   # <----- built-in variable REPLY에 입력받은 단어 저장

read -a xxx     # <---- 입력받은 것들 모두 array에 저장
echo ${xxx[0]}, ${xxx[1]}, ${xxx[2]} ...
```

### trap command

bash signal handler
정상 종료가 아닌 시그널을 잡아 처리


signal info
- https://mug896.gitbooks.io/shell-script/content/signals_table.html
```
USAGE: trap __handler_name__ __signal__

ex: 
# INT: CTRL+C , keyboard interrupt발생 시 handler발동.
trap bashtrap INT

function bashtrap {
	echo "CTRL+C!! execute bashtrap"
}
```

### Array 

```
# 09_simple_bash_array.sh
# Declare Array
ARRAY=( 'dog' 'bird' 'ant' )

# print out all elements of array
echo ${ARRAY[@]}

# print out each elements of array
LENGTH=${#ARRAY[@]}
for (( i=0; i < LENGTH; i++)); do
	echo ${ARRAY[$i]}
done
```

### if-else statement
```
if [__condition__] ; then
	...
else
	
	if [__condition__] ; then
	    ...
	else
	...
	fi
fi
```

### comparison

##### arithmetic comparison
|의미|실사용|
|-|-|
|==|-eq|
|!=|-ne|
|>|-gt|
|<|-lt|
|>=|-ge|
|<=|-le|

##### string comparison
|의미|실사용|
|-|-|
|equal|=|
|not equal| !=|
|<|less than|
|>|greater than|
|-n __str__| __str__은 공백이 아니다|
|-z __str__| __str__은 공백이다|
```
# 13_comparison.sh, 14_string_comparison.sh
# arithmetic comparisons
if [ 1 -eq 1 ]; then
	echo "두 수가 같다."
fi
# string comparisons
S1="hello world"
if [ -z $S1]; then
	echo "빈 문자열입니다."
else
	if [ $S1 = 'hello world' ]; then
		echo "hello world!"
	fi
fi
```

### File Testing
https://www.tldp.org/LDP/abs/html/fto.html
DIR_ROUTE='/usr/'
FILE_ROUTE='./sample.txt'
```
# 15_file_testing.sh
if [ -d $DIR_ROUTE ]; then
	echo '폴더 존재'
fi

if [ -f $FILE_ROUTE ]; then
	echo '파일 존재'
fi
```

### for-loop
```
# 16_for_loop.sh
for _var_ in __sequence__; do
	...
done

for ((i=0; __condition__; i++)); do
	...
done
```
Example
```
for idx in `seq 5`; do
	echo $idx
done
```

### while-until loop

while은 condition이 true 인 동안 loop를 실행합니다.(while condition is **True**)

반면, until은 condition이 true가 될 때까지 loop를 실행합니다.(until condition is **True**)
```
# 17_while_until_loop.sh
while [ __condition__ ]; do
	...
done

until [ __condition__ ]; do
	...
done
```

### control loop


shell script내에 pipeline을 넣을 수 있다. 

이 테크닉으로 STDIN/OUT을 제어할 수 있다.

Example
```
# 18.control_loop.sh
DIR='.'
# pipeline
find $DIR -type f | while read file; do
	if [[ "$file" = *[[:space:]]* ]]; then 
		mv "$file" `echo $file | tr ' ' '_'`
	fi
done
```

pipeline으로 find command 결과를 STDOUT으로 보내면서 read command에 

STDIN으로 받게된다. POSIX class로 표기된 표현식에서 DIR변수 경로의 파일을 
찾고 그 파일명에 공백이 있다면 공백을 underscore로 변경하는 예제


### Select command
```
# 20_select.sh 
PS3='Choose one word >>'

select word in "A" "B" "C" "D"
    do

	echo "고른 단어는 $word"

    break    # break하지않으면 무한루프
done

exit 0
```


