#!/bin/bash
total=0

for x in $*; do
((total+=x))
done

echo "scale = 4 ; $total / $#" | bc  
