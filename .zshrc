export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

DOTFILES_GIT="$HOME/.dotfiles.git"
ZSHRC_LOCAL="$HOME/.zshrc.local"

ZSH_THEME='robbyrussell'
plugins=(docker git asdf sudo)
source "$ZSH/oh-my-zsh.sh"

command -v batcat &>/dev/null &&  alias cat='batcat --style=plain --paging=never'

alias vim=nvim
alias v=nvim
alias :e=nvim

alias tt="/usr/bin/time -f '%e'"
alias g=grep
alias history="fc -liD -${HISTSIZE}"
alias h=history
alias dot="git --git-dir=$DOTFILES_GIT --work-tree=$HOME"

command -v wl-copy &>/dev/null && alias cb=wl-copy

# machine specific additions; not tracked by git
[ -f "$ZSHRC_LOCAL" ] && source "$ZSHRC_LOCAL"

# TODO
# install: fzf
# set up fuzzy history search
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
# install: zsh-autosuggestions, zsh-syntax-highlighting
