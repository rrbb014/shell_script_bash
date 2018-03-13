# Shell_Script_Basic

Let's imitate and learn shell script basics.

reference: https://linuxconfig.org/bash-scripting-tutorial

### Structures
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
├── README.md
├── sample.txt

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
function __function_name__ {
    ...
	...
}
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
