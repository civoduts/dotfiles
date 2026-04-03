## Installation

```sh
git clone --bare https://github.com/civoduts/dotfiles $HOME/.dotfiles.git
dot checkout
dot config --local status.showUntrackedFiles no
```

## Machine-specific config

Create `~/.zshrc.local` for settings that should not be tracked: machine-specific paths, local aliases, etc. It will be sourced automatically at the end of `.zshrc` if it exists.

## Dependencies

The following tools are used:

- **asdf**
- **batcat**
- **docker**
- **i3wm**
- **nvim**
- **oh-my-zsh**
- **picom**
- **ripgrep**
- **tmux**
- **Vicinae**
- **wl-copy** (if on Wayland)
- **xclip** (if on Wayland)
