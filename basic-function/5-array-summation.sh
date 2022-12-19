#!bin/bash

#累加数组中的值
function addarray {
  local sum=0
  local newarray
  newarray=(`echo "${@}"`)
  for value in ${newarray[*]}
  do
    sum=$[ $sum + $value ]
  done
  echo $sum
}

addarray 1 2 3 4 5