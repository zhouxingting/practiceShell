#!/bin/bash

# using one command line parameter
# 使用一个命令行参数

factorial=1
for (( number = 1; number <= $1; number++ ))
do
  factorial = $[ $factorial * $number ]
done

echo "$1 is $factorial"