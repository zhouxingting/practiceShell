#!/bin/bash

count=1
echo "\$* Parameter #$count = $*"

while [ -n "$1" ]; do
  echo "\$@ Paramenter #$count=$1";
  count=$[ $count + 1 ]
  shift
done

