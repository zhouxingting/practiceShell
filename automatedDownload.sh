#!/bin/bash

#自动化下载脚本
#download latest cURL file automatically
#自动下载最新的cURL文件，并写入/home/tiandi/curl
#-o/--output 把输出写到该文件中
#-s/--silent 静音模式。不输出任何东西

curl -s -o /home/tiandi/curl
http://curl.haxx.se/download/curl
