#!/bin/bash

[ $# -eq 1 ] || exit 1

fact=1

for i in $(seq $1)
do
    ((fact*=i))
done

echo $fact