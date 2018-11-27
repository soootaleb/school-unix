#!/bin/sh

echo "Enter a number"

read n

declare -i n

start=$(($n-5))
end=$(($n+5))

seq $start 1 $end