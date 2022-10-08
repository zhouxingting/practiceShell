#!/bin/bash

# testing the reading command

echo -n "please enter your name："
read name
echo "Hello $name, welcome to my program"

read -p "please enter your age: " age
days=$[ $age * 365 ]

echo "That makes you over $days days old"

#指定多个变量，输入的每个数据值都会分配给表中的下一个变量，如果用完了，就全分配各最后一个变量 
read -p "Please enter name:" first last
echo "Checking data for $first $last"

#如果不指定变量，read命令就会把它收到的任何数据都放到特殊环境变量REPLY中
read -p "Enter a number:"

factorial=1
for(( count=1; count < $REPLY; count++ ))
do
  factorial=$[ $count * $factorial ]
done

echo "The factorial of $REPLY is $factorial"