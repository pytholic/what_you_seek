Install the following.
* Install homebrew
* Install Chrome

# Shell Setup

## zsh
```shell
# Installation
sudo apt install -y zsh or brew install zsh
chsh -s $(which zsh)  # set to default
which $SHELL
```
Log out and log in again.

Else set it to default from `gnome-shell` preferences -> [link](https://askubuntu.com/questions/342299/zsh-is-not-launched-while-opening-a-new-terminal-with-gnome-terminal)

## iTerm
```
brew install --cask iterm2
```
Go to `Settings>Profile>Keys>Key mappins>Preset` and set it to "Natural Text Editing" in settings.

## Install oh my zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install powerlevel10k
```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```
Now that it's installed, open the "~/.zshrc" file with your preferred editor and change the value of "ZSH_THEME" as shown below:
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```
Also download `Meslo` fonts from p10k repo (must to make it look better).

Add to vscode `settings.json`:
```
"terminal.integrated.fontFamily": "MesloLGS NF"
```

## Download nerd and comic code fonts
https://dtinth.github.io/comic-mono-font/
https://github.com/ryanoasis/nerd-fonts

Primary font -> Comic Code
Non-ASCII -> Nerd font

Set font size to 16.

## Set terminal colors
https://github.com/pytholic/what_you_seek/blob/main/config_files/terminal_colors.itermcolors

We can also use `Gogh Themes`.


## Install zsh plugins
Install zsh-autosuggestions:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Install zsh-syntax-highlighting:
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Install fzf:
```
sudo apt get install fzf
brew install fzf
```

Open the "~/.zshrc" file in your desired editor and modify the plugins line to what you see below.
```
plugins=(git fzf zsh-autosuggestions zsh-syntax-highlighting web-search)
```

Then

```
source ~/.zshrc
```

## tmux
Install tmux and config.
https://github.com/gpakosz/.tmux

Install clipboard support.
https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard

Enable mouse mode.
```
prefix + m
```

Copy personal confix files.
https://github.com/pytholic/what_you_seek/tree/main/config_files/tmux

Add to `~/.zshrc`.
```
source ~/.tmux.zsh
```

## Neovim
Install `Neovim` and `Packer`.
```
echo "alias vim='nvim'" >> ~/.zshrc
echo "alias vi='nvim'" >> ~/.zshrc
echo "alias oldvim='\vim'" >> ~/.zshrc
```
Copy files to `.config/nvim`, then do `:PackerSync`.

If language servers don't wotk, install manually with `:Mason`.
```
Mason list
black
clangd
cmake-language-server
eslint-lsp
flake8
isort
jedi-language-server
lua-language-server
dockerfile-language-server
prettier
pylint
stylua
typscript-language-server
```

## LunarVim
Install and put config inside `~/.confix/lvim`. if it doesn't work then make files and folder one-by-one. It will automatically install support.

add lvim to path
`export PATH="$HOME/.local/bin/:$PATH"`

Use `:Mason` to install missing servers like clangd, lua_lsp etc.

## Fix python issue
`zsh` recognizes `python3` but not `python`. Do the following:
```shell
whereis python  # e.g. /usr/bin/python3
echo "alias python=/usr/bin/python3" >> ~/.zshrc

```

# Install rest of the apps
* Tree `brew install tree`
* Htop `brew install htop`
* Docker Desktop
* Notion
* Rectangle window manager
* Virtualbox (if needed)
* Git
```sh
brew install git
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
git config credential.helper store or use ssh0key method instead
```
* Anaconda/Miniconda
```shell
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

conda config --set auto_activate_base false
```
Do `brew install md5sha1sum` if got `md5sum: command not found` error.

* lazygit
Install `delta` -> https://github.com/dandavison/delta
Copy custom config.

# VS Code (if needed)
* Setup
    * Add to PATH on MacOS
       * Open the Command Palette via ⌘⇧P and type shell command and select *"Install code command in PATH" command.* 
    * Word Wrap -> On
    * Theme: Nord
* Extensions
* Web dev
* Vspacecode
    * Live server
    * Auto rename tag
    * Auto close tag
    * Prettier formatter -> https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode
* vscode-icons
* Markdown All in One
* github themes
* Jupyter
* Python
    * python
    * Python Indent
    * Pylance
    * Pylint
    * Black formatter
    * Ruff
* IntelliCode
* Remote - SSH
* git history
* git lens
* git graph
* Pylance
* Pylint
* C++/C
* CMake
* Dev containers
* Docker
* TODO Highlight
* TODO tree
* Path Autocomplete
* Project Manager
* Better Comments
* Code Spell Checker
* Pythorch Snippets
```
# Opening terminal in current folder
Go to Preferences->Keyboard Shortcuts->Click open in JSON
Paste:
{
  "key": "alt+t",
  "command": "workbench.action.terminal.newWithCwd",
  "args": {
      "cwd": "${fileDirname}"
  }
}
```
## VSCode fonts
Size -> 16

Add `Comic Mono, Hack Nerd Font Mono` to font family.

# Change focus between multiple displays
https://medium.com/thevelops-tech-blog/how-to-switch-focus-between-screens-in-macos-21c6f02883a6

# JSON processor
Colorful shell output of json.
```
brew install jq
file.json | jq
```




