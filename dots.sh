#!/bin/zsh
cd ~/dotfiles/ 
for filename in .*(.); do
  cp $filename ~/
done
