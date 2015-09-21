if [ -f ~/.drush_bashrc ] ; then
    . ~/.drush_bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

. ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

. ~/.profile

export PATH="$PATH:/Applications/DevDesktop/drush"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
