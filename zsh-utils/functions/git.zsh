#!/usr/bin/zsh

,g_graph() {
    git log --oneline --graph
}

,g_gone() {
    git branch --v | grep gone
}

,g_gone_delete() {
    git fetch --all --prune
    git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
}
