alias ..="cd .."
alias ...="cd ../.."
alias ls="ls -a"
alias v="vim"
alias ga="git add"
alias gc="git commit -m"
alias gac="git add . && git commit -m"
alias gs="git status"
alias g="git"
alias pyintel="arch -x86_64 /Library/Frameworks/Python.framework/Versions/3.9/bin/python3.9"
export PATH=/opt/homebrew/bin:$PATH
export LIBRARY_PATH=/opt/homebrew/lib:$LIBRARY_PATH

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%B%F{yellow}%~%f%b on %B%F{magenta} '\$vcs_info_msg_0_' %f%b'
zstyle ':vcs_info:git:*' formats '%b'
