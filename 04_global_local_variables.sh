#!/bin/bash
# Define bash global variable
# This variable is global and can be used anywhere in this bash script
VAR="전역변수"
function b {
# Define bash local variable
# This variable is local to bash function only
    local VAR="지역변수"
    echo $VAR
}

# ======================
# Start Here
echo $VAR
# 함수호출
b 
# Note the bash global variable did not change
# local is bash reserved word
echo $VAR
