#!/usr/bin/zsh

alias ,PROJECT-NAME='cd ~/PATH-TO-PROJECT'
alias ,code_PROJECT-NAME='code ~/PATH-TO-PROJECT'
alias ,run_PROJECT-NAME=',PROJECT-NAME && pnpm start'
alias ,dev_PROJECT-NAME=',code_PROJECT-NAME; ,run_PROJECT-NAME'
