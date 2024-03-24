# dotfiles

## Prerequisites

Replace apt with appropriate package managers.

```
apt install stow

apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

apt install zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

apt install eza
apt install zoxide
```

Afterwards, remove .zshrc so that we can stow

Follow the prompts for fzf, installing keybindings, though don't have it append to .zshrc now that I already did it
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```


## Setup

### One-time

```
git clone https://github.com/lydavid/dotfiles.git
```

### Each time after pulling

```
cd ~/dotfiles
stow .
exec zsh
tmux source ~/.tmux.conf
```

`Ctrl + a` + `I` to install all tmux plugins
