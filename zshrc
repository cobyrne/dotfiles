
# Prompt
autoload -U promptinit && promptinit
prompt pure

# Aliases
alias vi="vim" # vi is vim, how did I fuck up my `vi`?

# Exports
export PATH=/usr/local/bin:$PATH # Prefer /usr/local/bin to /usr/bin
export EDITOR=vim


# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
