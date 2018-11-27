#!/bin/sh

[ $# -gt 3 ] && echo "Too much arguments"
[ $# -eq 3 ] && seq $1 $3 $2
[ $# -eq 2 ] && seq $1 1 $2
[ $# -eq 1 ] && seq $1
[ $# -eq 0 ] && seq 30
