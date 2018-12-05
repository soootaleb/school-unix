val1=$1
op=$(echo $2 | tr x "*")
val2=$3
[ $# -lt 3 ] &&
    read -p "r:" val1 op val2
echo $(($val1 $op $val2))
