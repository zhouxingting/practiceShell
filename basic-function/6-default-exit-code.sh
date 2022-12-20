#!/bin/bash

function func1() {
  echo 444
  ls -l beadFile
}

func1
echo "The exit status is : $?"


function func2() {
  ls -l beadFile
  echo 555
}

func2
echo "The exit status is : $?"