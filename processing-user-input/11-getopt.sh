#!bin/bash

#extracting command line options and values with getopt
# getopt command is not goot at dealing with space,we can use getopts

cd /path/to/somewhere
if [ "$?" = "0" ]; then
  rm *
else
  echo "无法切换目录！" 1>&2
  exit 1
fi
