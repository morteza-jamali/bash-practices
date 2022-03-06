#!/usr/bin/env bash

read -p 'Enter [Y] or [N]: ' inp

case "${inp^^}" in
	"N") echo 'NO';;
	"Y") echo 'YES';;
esac
