export ZSH="$HOME/.oh-my-zsh"
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/go/bin" ] && export PATH="$HOME/go/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

DOTFILES_GIT="$HOME/.dotfiles.git"
ZSHRC_LOCAL="$HOME/.zshrc.local"

ZSH_THEME='superjarin'
plugins=(docker git asdf sudo)
source "$ZSH/oh-my-zsh.sh"

command -v batcat &>/dev/null && alias cat='batcat --theme=gruvbox-dark --style=plain --paging=never'
command -v bat &>/dev/null && alias cat='bat --theme=gruvbox-dark --style=plain --paging=never'

alias va='python -m venv .venv'
alias activate='source .venv/bin/activate'

alias vim=nvim
alias v=nvim
alias :e=nvim

alias g=grep
alias grep='grep --color'
alias egrep='grep -E'
command -v rg &>/dev/null && alias rg='rg --smart-case'

alias ls='ls --color=auto'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'

psmem() {
  local n=$(( ${1:-20} + 1 ))
  local cols=${COLUMNS:-$(tput cols 2>/dev/null || echo 80)}
  ps -eo pid,user,%mem,%cpu,cmd --sort=-rss --columns=$cols | head -n $n
}
pscpu() {
  local n=$(( ${1:-20} + 1 ))
  local cols=${COLUMNS:-$(tput cols 2>/dev/null || echo 80)}
  ps -eo pid,user,%mem,%cpu,cmd --sort=-%cpu --columns=$cols | head -n $n
}
alias hdd='df -h | sort -k 5 -r'

serve() { python -m http.server -b 127.0.0.1 ${1:-8000} }
servelan() { python -m http.server -b 0.0.0.0 ${1:-8000} }
alias tt="/usr/bin/time -f '%e'"
alias h="fc -liD -${HISTSIZE}"
alias dot="git --git-dir=$DOTFILES_GIT --work-tree=$HOME"

# command -v wl-copy &>/dev/null && 
[ -n "$WAYLAND_DISPLAY" ] && command -v wl-copy >/dev/null && alias cb=wl-copy
[ -n "$DISPLAY" ] && command -v xclip >/dev/null && alias cb='xclip -selection clipboard'

# machine specific additions; not tracked by git
[ -f "$ZSHRC_LOCAL" ] && source "$ZSHRC_LOCAL"

# TODO
# install: fzf
# set up fuzzy history search
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
# install: zsh-autosuggestions, zsh-syntax-highlighting
