# dotfiles

My dotfiles, managed with [GNU stow](https://www.gnu.org/software/stow/). Each top-level folder is a stow package that mirrors `$HOME`.

| Package | What's in it |
|---|---|
| `macos/` | Current Mac setup: zsh (`.zshrc`, `.zprofile`, `.zshenv`), git, Ghostty, herdr, Neovim (NvChad), starship, mise, gh, VS Code settings + keybindings, Claude Code settings + commands |
| `linux/` | Older Linux setup: zsh + powerlevel10k, tmux (+ tpm), Neovim, Ghostty |
| `extras/` | Not stowed: `Brewfile`, VS Code extension list, Rectangle prefs, Raycast export instructions |

## New Mac

```sh
# 1. Homebrew (https://brew.sh), then clone
git clone https://github.com/ritwikgarg/dotfiles ~/dotfiles && cd ~/dotfiles

# 2. CLI tools + apps (Ghostty, Raycast, Rectangle, VS Code, JetBrains Mono Nerd Font)
brew bundle --file=extras/Brewfile

# 3. Symlink configs into $HOME (move any existing files it reports as conflicts first)
stow -t ~ macos

# 4. Runtimes and editor plugins
mise install                     # node 20, python 3.8–3.12
nvim                             # lazy.nvim installs plugins on first launch
xargs -n1 code --install-extension < extras/vscode-extensions.txt

# 5. Rectangle window shortcuts (quit Rectangle first)
defaults import com.knollsoft.Rectangle extras/rectangle.plist
```

6. Raycast hotkeys: see [`extras/raycast/README.md`](extras/raycast/README.md).
7. herdr: Ghostty launches herdr in every window (`command =` in `.config/ghostty/config`). Re-enable herdr's Claude Code integration from herdr so it reinstalls its session hook.
8. Git: the `gh` CLI holds credentials, so run `gh auth login` (the token is not stored here).

## Linux

```sh
sudo apt install git stow
git clone https://github.com/ritwikgarg/dotfiles ~/dotfiles && cd ~/dotfiles
stow -t ~ linux
```

## Not in this repo (on purpose)
SSH keys and `~/.ssh/config`, `gh` auth tokens (`hosts.yml`), cloud credentials, and anything specific to work machines.
