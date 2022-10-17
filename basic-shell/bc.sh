#!/bin/bash

var1=100
var2=10
var3=`echo "scalc=4; $var1 / $var2" | bc`

echo The answer for this is $var3