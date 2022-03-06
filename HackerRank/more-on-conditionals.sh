#!/usr/bin/env bash

declare -A sides

sides=()

for i in {0..2}; do
	read -p "Enter number [$i]: " sides[$i]
	[[ ${sides[$i]} -gt 1000 || ${sides[$i]} -lt 1 ]] && exit 1
done

if [[ ${sides[0]} -eq ${sides[1]} || \
${sides[0]} -eq ${sides[2]} || \
${sides[1]} -eq ${sides[2]} ]]; then
	if [[ ${sides[0]} -eq ${sides[1]} && \
		${sides[1]} -eq ${sides[2]} ]]; then
		echo 'EQUILATERAL' && exit 0
	fi

	echo 'ISOSCELES' && exit 0
fi

echo 'SCALENE' && exit 0
