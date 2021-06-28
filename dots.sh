#!/bin/zsh

if [[ "$OSTYPE" == "darwin"* ]]; then
	cd ~/dotfiles/mac/ 
	for filename in .*(.); do
		cp $filename ~/
	done
echo "⚡done"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
	cd ~/dotfiles/linux/ 
	for filename in .*(.); do
		cp $filename ~/
	done
echo "⚡done"
else
	echo "\033[1;31mERROR:\033[0m Unsupported OS"
	exit 1
fi
 
