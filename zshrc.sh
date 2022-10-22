#!/usr/bin/zsh

# 1. Create new file ~/aliases.zsh with

alias ,code_zshrc='code ~/.zshrc'
alias ,source_zshrc='source ~/.zshrc'

# 2. Add the following lines in ~/.zshrc

if [ -f ~/aliases.zsh ]; then
  source ~/aliases.zsh
else
  print "404: ~/aliases.zsh not found."
fi
