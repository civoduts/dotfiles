## Installation

```sh
git clone --bare https://github.com/civoduts/dotfiles $HOME/.dotfiles.git
dot checkout
dot config --local status.showUntrackedFiles no
```

## Machine-specific config

Create `~/.zshrc.local` for settings that should not be tracked: machine-specific paths, local aliases, etc. It will be sourced automatically at the end of `.zshrc` if it exists.

## Dependencies

The following tools are expected to be installed:

- **oh-my-zsh**
- **nvim**
- **tmux**
- **batcat**
- **asdf**
- **wl-copy**
- **docker**
