export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

DOTFILES_GIT_PATH="$HOME/.dotfiles.git"

ZSH_THEME='robbyrussell'
plugins=(docker git asdf sudo)
source "$ZSH/oh-my-zsh.sh"

command -v batcat &>/dev/null &&  alias cat='batcat --style=plain --paging=never'

alias vim=nvim
alias v=nvim
alias :e=nvim

alias cb=wl-copy

alias dot="git --git-dir=$DOTFILES_GIT_PATH --work-tree=$HOME"

# TODO
# install: fzf
# set up fuzzy history search
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
# install: zsh-autosuggestions, zsh-syntax-highlighting
