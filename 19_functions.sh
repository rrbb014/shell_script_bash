#!/bin/bash
# 어떤 순서든 함수를 선언할수있다.

function function_B {
	echo Function B
}

function function_A {
	echo $1
}

function function_D {
	echo Function D
}

function function_C {
	echo $1
}

# 함수 호출
# function_A에 인자를 넘기자
function_A "Function A"
function_B
# function_C에 인자를 넘기자
function_C "Function C"
function_D
