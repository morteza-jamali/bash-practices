#!/usr/bin/env bash

read -p 'Enter first number: ' x_num
read -p 'Enter second number: ' y_num

[[ $x_num -gt $y_num ]] && echo 'X is greater than Y' && exit 0
[[ $x_num -lt $y_num ]] && echo 'X is less than Y' && exit 0
[[ $x_num -eq $y_num ]] && echo 'X is equal to Y' && exit 0
