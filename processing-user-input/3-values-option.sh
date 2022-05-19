#!/bin/bash

# extracting command line options and values
# 提取命令行选项和值

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