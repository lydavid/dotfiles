# dotfiles

## Prerequisites

stow

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
