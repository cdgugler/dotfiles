# WP-CLI Bash completions
source $HOME/.wp-cli/vendor/wp-cli/wp-cli/utils/wp-completion.bash
export PATH=/home/cory/.wp-cli/bin:$PATH

if [ -f ~/.drush_bashrc ] ; then
    . ~/.drush_bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

. ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile
