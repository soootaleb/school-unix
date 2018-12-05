
while : ; do
    read -p "Deux variables " a b
    #[ "$a" = "." -o "$b" = "." ] && exit 0
    if [ "$a" = "." -o "$b" = "." ]; then
        exit 0
    fi
    echo $((a + b))
    echo $((a * b))
    echo $((a / b))
    echo $((a ** b))
    echo $((a % b))
done
