# Autocompletion
autoload -Uz compinit
_comp_options+=(globdots);
compinit

# History
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Options
setopt INC_APPEND_HISTORY

# Plugins
source $ZDOTDIR/user/packages.sh
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "agkozak/zsh-z"

# Additional files
zsh_add_file $ZDOTDIR/user/aliases.sh
zsh_add_file $ZDOTDIR/user/export.sh
zsh_add_file $ZDOTDIR/user/secrets.sh

# Theme
source $ZDOTDIR/user/theme.sh

# Evals
eval "$(~/.rbenv/bin/rbenv init - zsh)"

# Dotfiles alias
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
