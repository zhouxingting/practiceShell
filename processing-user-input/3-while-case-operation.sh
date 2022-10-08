#!/bin/bash

# extracting command line options and values
# 提取命令行选项和值

#https://www.runoob.com/linux/linux-shell-basic-operators.html
# 字符串运算符

# =	检测两个字符串是否相等，相等返回 true。	[ $a = $b ] 返回 false。
# !=	检测两个字符串是否不相等，不相等返回 true。	[ $a != $b ] 返回 true。
# -z	检测字符串长度是否为0，为0返回 true。	[ -z $a ] 返回 false。
# -n	检测字符串长度是否不为 0，不为 0 返回 true。	[ -n "$a" ] 返回 true。
# $	检测字符串是否为空，不为空返回 true。	[ $a ] 返回 true。

# 整数的运算
# [ integer1 -eq integer2 ]：如果integer1等于integer2，则为true。
# [ integer1 -ne integer2 ]：如果integer1不等于integer2，则为true。
# [ integer1 -le integer2 ]：如果integer1小于或等于integer2，则为true。
# [ integer1 -lt integer2 ]：如果integer1小于integer2，则为true。
# [ integer1 -ge integer2 ]：如果integer1大于或等于integer2，则为true。
# [ integer1 -gt integer2 ]：如果integer1大于integer2，则为true。

while [ -n "$1" ]
do
  case "$1" in
  -a) echo "Found the -a option";;
  -b) param="$2"
    echo "Found the -b option, with parameter value $param";;
  -c) echo "Found the -c option";;
  --) shift
  break;;
  *) echo "$1 is not an option";;
  esac
  shift
done

#$@ 取不到变量值了，因为while遍历完之后，参数都被shift命令销毁完了
echo "start new...$@"

count=1
for param in "$@"
do
  echo "Parameter #$count: ${param}"
  count = $[ $count + 1 ]
done