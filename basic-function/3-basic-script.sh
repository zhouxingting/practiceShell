#!/bin/bash

function fun1 {
  echo 'This is an example of a function'
}

count=1
while [ $count -le 5 ]; do
  fun1
  count=$[ $count + 1 ]
done

echo "This is the end of the loop"
fun1
echo "Now this is the end of the script"
