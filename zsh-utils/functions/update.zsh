#!/usr/bin/zsh

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
