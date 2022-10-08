#!/bin/sh

# https://www.runoob.com/linux/linux-comm-sed.html
# Linux sed 命令是利用脚本来处理文本文件。

# sed 可依照脚本的指令来处理、编辑文本文件。

# Sed 主要用来自动编辑一个或多个文件、简化对文件的反复操作、编写转换程序等。  

# -e<script>或--expression=<script> 以选项中指定的script来处理输入的文本文件。
# -f<script文件>或--file=<script文件> 以选项中指定的script文件来处理输入的文本文件。
# -h或--help 显示帮助。
# -n或--quiet或--silent 仅显示script处理后的结果。
# -V或--version 显示版本信息。

#  sed就是一个交互式的流编辑器，规则就是's/{old value}/{new value}/' 's/.*//g':这个意思sed的意思就是吧多个'\'替换成一个'/'

# `` :反引号，获取执行命令的结果 
# 单引号''，双引号""的区别是单引号''剥夺了所有字符的特殊含义，单引号''内就变成了单纯的字符。双引号""则对于双引号""内的参数替换($)和命令替换(``)是个例外。
# 反引号``是命令替换，命令替换是指Shell可以先执行``中的命令，将输出结果暂时保存，在适当的地方输出。语法:`command`

# ++++++++++++++demo++++++++++++++
DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"
# ++++++++++++++demo++++++++++++++

# $(dirname $0)：意思是寻找当前脚本文件的父目录 
echo "$(dirname "$0") --------------"

cd `dirname $0` echo `pwd ---------`

basedir=$(dirname "$(echo "$0" | sed -e 's,\\,/,g')")
echo "sss $0"

echo "$0" | sed -e 's,\\,/,g'

echo $uname

case `uname` in
    *CYGWIN*) basedir=`cygpath -w "$basedir"`;;
esac

echo "basedir $basedir"

if [ -z "$NODE_PATH" ]; then
  export NODE_PATH="/mnt/e/study/shell/newrank/node_modules/.pnpm/node_modules"
else
  export NODE_PATH="$NODE_PATH:/mnt/e/study/shell/newrank/node_modules/.pnpm/node_modules"
fi
if [ -x "$basedir/node" ]; then
  # exec "$basedir/node"  "$basedir/../../../cli/bin/my-cli.js" "$@"
  echo "$basedir/node"
else
  echo "HHHH"
  # exec node  "$basedir/../../../cli/bin/my-cli.js" "$@"
fi

t='hellp world'