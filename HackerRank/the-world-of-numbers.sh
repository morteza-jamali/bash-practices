#!/usr/bin/env bash

read -p 'Enter first number: ' f_num
read -p 'Enter second number: ' s_num

min=-100
max=100

( [[ $f_num -lt $min || $f_num -gt $max ]] || \
[[ $s_num -lt $min || $s_num -gt $max ]] || \
[[ $s_num = 0 ]] ) && \
exit 1

echo $(($f_num + $s_num))
echo $(($f_num - $s_num))
echo $(($f_num * $s_num))
echo $(($f_num / $s_num))
