# ****************** ZSH ****************** #

alias code_zshrc='code ~/.zshrc'
alias source_zshrc='source ~/.zshrc'

alias code_aliases='code ~/.aliases.zsh'

# **************** TERMINAL **************** #

BOLD='\e[1m'

GREEN='\e[32m'
RED='\e[31m'
DARK_GRAY='\e[90m'

RESET='\e[0m'

echoColor() {
  echo -e "$1$2${RESET}"
}

echoBold() {
  echo -e "${BOLD}${1}${RESET}"
}

echoError() {
  echoColor $RED $1
}

echoSuccess() {
  echoColor $GREEN $1
}

# ***************** UPDATE **************** #

update() {
  echoBold "\n[ 1 / 3 ] UPDATE\n" &&
    sudo apt update -y &&
    echoSuccess "\n-- done" &&
    echoBold "\n[ 2 / 3 ] UPGRADE\n" &&
    sudo apt upgrade -y &&
    echoSuccess "\n-- done" &&
    echoBold "\n[ 3 / 3 ] AUTO-REMOVE\n" &&
    sudo apt autoremove -y &&
    echoSuccess "\n-- done"
}

# ***************** DOCKER **************** #

alias dcd='docker compose down'

# ****************** GIT ****************** #

g_graph() {
  git log --oneline --graph
}

g_gone() {
  git branch --v | grep gone
}

g_gone_delete() {
  git fetch --all --prune
  git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
}

alias reburst='cd ~/git/reburst && gfa'
alias code_reburst='code ~/git/reburst'

# ****************** EOF ****************** #