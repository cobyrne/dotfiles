#zsh config

# prompt
PROMPT='%T [%n@%m:%~ ]
%h %# '

#use vi shortcuts
bindkey -v

#history
setopt histignoredups #don't add line if same as previous
setopt appendhistory

#completion
#zstyle ':completion:*' menu select=5

#set up z for quickjumping to directories
#. /usr/local/bin/z.sh
#function precmd () {
    #z --add "$(pwd -P)"
#}

#aliases
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias ls='ls -aFG'
alias texclean='/Users/colin/texclean.py'

#environment config
export EDITOR="vim"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export SVN_EDITOR="vim"

# other
setopt nobeep
setopt noclobber
setopt correct #correct commands
