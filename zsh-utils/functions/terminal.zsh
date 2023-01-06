#!/usr/bin/zsh

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
