#!/bin/bash

read -p "Enter a number: " num

a=0
b=1
index=1

if [[ $num -eq 0 ]]; then
    echo "The number $num is in the Fibonacci sequence at position 1."
    exit 0
fi

while [[ $b -le $num ]]; do
    if [[ $b -eq $num ]]; then
        echo "The number $num is in the Fibonacci sequence at position $((index + 1))."
        exit 0
    fi
    temp=$b
    b=$((a + b))
    a=$temp
    ((index++))
done

echo "The number $num is not in the Fibonacci sequence."
