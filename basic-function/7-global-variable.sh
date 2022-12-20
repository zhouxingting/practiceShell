#!/bin/bash

function db1 {
  value=$[ $value * 2 ]
}

read -p "请输入一个数字：" value
db1
echo "最后的结果值是：${value}"
