#!/bin/bash


[ $# -ne 1 ] && echo "Missing argument" && exit 127

sam=$(ls -hld $1 | cut -d" " -f5)
echo $1 $sam
