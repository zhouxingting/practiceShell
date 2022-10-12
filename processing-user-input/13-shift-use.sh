#!/bin/bash

count=1
while [ -n "$1" ]
do
  echo "Parameter #$count = $1"
  count = $[ $count + 1 ]
  shift
done


#打印换行符
echo -e "\n"

echo "The original parameters :$*"
shift 2
echo "Here's the new first parameter:$1"