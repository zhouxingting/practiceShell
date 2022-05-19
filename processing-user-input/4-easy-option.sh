#!/bin/bash

# extracting command line options as parameters
#提取命令行选项作为参数
#处理简单选项

#shift  
#加双引号表示强制变量为字符串格式，除了数字，使用双引号更加安全
#-n str，字符串不为null，长度大于零

#https://www.runoob.com/linux/linux-shell-basic-operators.html
# 字符串运算符

# =	检测两个字符串是否相等，相等返回 true。	[ $a = $b ] 返回 false。
# !=	检测两个字符串是否不相等，不相等返回 true。	[ $a != $b ] 返回 true。
# -z	检测字符串长度是否为0，为0返回 true。	[ -z $a ] 返回 false。
# -n	检测字符串长度是否不为 0，不为 0 返回 true。	[ -n "$a" ] 返回 true。
# $	检测字符串是否为空，不为空返回 true。	[ $a ] 返回 true。

while [ -n "$1" ]
do
  case "$1" in
    -a) echo "Found the -a optins";;
    -b) echo "Found the -b optins";;
    -c) echo "Found the -c optins";;
    *) echo "$1 is not a valid options";;
  esac
  shift
done