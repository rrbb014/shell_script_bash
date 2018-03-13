# Shell_Script_Basic

Let's imitate and learn shell script basics.

reference: https://linuxconfig.org/bash-scripting-tutorial

### Shebang
```
$ which bash 
#!/bin/bash
```

### Declare Variable and print it 
```
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
