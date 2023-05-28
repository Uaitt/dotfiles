# Terminal
PS1='%m %1d $ '

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Autocompletion
autoload -Uz compinit
_comp_options+=(globdots);
compinit

# History
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Options
setopt INC_APPEND_HISTORY_TIME INTERACTIVE_COMMENTS

# Colors
autoload -Uz colors && colors

# Plugins
source $ZDOTDIR/user/packages.sh

zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-completions"
zsh_add_plugin "agkozak/zsh-z"
