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

```
cd ~
git clone https://github.com/lydavid/dotfiles.git
cd dotfiles
stow .
```
