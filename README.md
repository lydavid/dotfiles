# dotfiles

## Prerequisites

stow is installed
```
apt install stow
```

tmux plugin manager is installed
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

zsh is installed

oh-my-zsh is installed
https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#manual-inspection

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
source ~/.zshrc
tmux source ~/.tmux.conf
```

`Ctrl + a` + `I` to install all tmux plugins
