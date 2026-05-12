## Installation

```sh
git clone --bare https://github.com/civoduts/dotfiles $HOME/.dotfiles.git
git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME checkout
dot config --local status.showUntrackedFiles no
```

> **Note:** If `checkout` fails because dotfiles already exist, use the `-f` flag to overwrite them.

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
- **pactl**
- **picom**
- **ripgrep**
- **rofi**
- **tmux**
- **Vicinae**
- **wl-copy** (if on Wayland)
- **xclip** (if on X11)
