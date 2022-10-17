#!/bin/bash

# EOF是（END Of File）的缩写，表示自定义终止符。既然自定义，那么EOF就不是固定的，可以随意设置别名，在linux按ctrl-d 就代表EOF。
# < :输入重定向
# > :输出重定向
# >> :输出重定向,进行追加,不会覆盖之前内容
# << :标准输入来自命令行的一对分隔号的中间内容.

var1=1
var2=2
var3=3
var4=4

var5=`bc <<EOF
a=$var1 * $var2
b=$var3 * $var4
a + b
EOF
`

echo The final answer for this mess is $var5