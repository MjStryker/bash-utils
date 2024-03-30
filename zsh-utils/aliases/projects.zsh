#!/usr/bin/zsh

# PROJECT NAME

alias ,PROJECT-NAME='cd ~/PATH-TO-PROJECT && gf'
alias ,code-PROJECT-NAME='code ~/PATH-TO-PROJECT'
alias ,run-PROJECT-NAME=',PROJECT-NAME && START-COMMAND'
alias ,dev-PROJECT-NAME=',code-PROJECT-NAME; ,run-PROJECT-NAME'
