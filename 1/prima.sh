#!/bin/bash

# input
echo -n "Masukkan bilangan : "
read num

# variabel for condition
flag=0

# check < 1 | = 1
if [ $num -le 1 ]; then
    echo "bilangan bukan bilangan prima."
    exit
fi

# check > 1
for ((i=2; i<=$num/2; i++))
do
    # log num = 0
    if [ $(($num%i)) -eq 0 ]; then
        flag=1
        break
    fi
done

# check condition
if [ $flag -eq 0 ]; then
    echo "bilangan ini bilangan prima."
else
    echo "bilangan bukan bilangan prima."
fi