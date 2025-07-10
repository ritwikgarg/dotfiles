# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git
```
apt install git
```

### Stow
```
apt install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git
```
$ git clone https://github.com/ritwikgarg/dotfiles.github
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
