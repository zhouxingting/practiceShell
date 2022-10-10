#!/bin/bash

# -s：使得用户的输入不显示在屏幕上，这常常用于输入密码或保密信息。
# -p参数指定用户输入的提示信息。
read -s -p "Please enter your password:" pass

echo
echo "Is your password really $pass?"