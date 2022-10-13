#!/bin/bash

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