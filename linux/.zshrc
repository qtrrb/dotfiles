alias ..="cd .."
alias ...="cd ../.."
alias ls="ls -a"
alias v="vim"
alias ga="git add"
alias gc="git commit -m"
alias gac="git add . && git commit -m"
alias gs="git status"
alias g="git"

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%B%F{yellow}%~ %f%b'\$vcs_info_msg_0_'%f%B%F{green}λ%f%b '
zstyle ':vcs_info:git:*' formats 'on %B%F{magenta} %b '
