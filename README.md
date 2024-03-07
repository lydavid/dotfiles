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

.bashrc has this line
```
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

## Setup

### One-time

```
cd ~
git clone https://github.com/lydavid/dotfiles.git
cd dotfiles
```

### Each time after pulling

```
cd ~/dotfiles
stow .
source ~/.bashrc
tmux source ~/.tmux.conf
```

`Ctrl + a` + `I` to install all tmux plugins
