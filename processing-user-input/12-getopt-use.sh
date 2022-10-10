#!/bin/bash
# simple demonstration of the getopts command

while getopts ab:c opt
do 
  case "$opt" in
  a) echo "a The value provided is $OPTARG";;
  b) echo "b The value provided is $OPTARG";;
  c) echo "The value provided is $OPTARG";;
  *) echo "Unknown option:$opt";;
  esac
done