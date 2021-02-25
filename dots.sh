#!/bin/zsh

if [[ "$OSTYPE" != "darwin20.0" ]]; then
  echo "\033[1;31mERROR:\033[0m Unsupported OS"
  exit 1
fi
cd ~/dotfiles/ 
for filename in .*(.); do
  cp $filename ~/
done
echo "⚡done"
