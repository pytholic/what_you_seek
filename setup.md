# System setup

Install the following.
* Ubuntu/macOS
* Git
```sh
brew install git
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
git config credential.helper store or use ssh0key method instead
```
* Chrome
* Docker
* htop
* VS Code
  * Setup
      * Add to PATH on MacOS
         * Open the Command Palette via ⌘⇧P and type shell command and select *"Install code command in PATH" command.* 
      * Auto Save -> onFocusChange
      * Word Wrap -> On
      * Theme: Mariana
         * Then apply this [settings.json](https://github.com/pytholic/what_you_seek/blob/main/config_files/vs_code_settings.json)
      * Terminal themes
         * https://glitchbone.github.io/vscode-base16-term/#/
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
  * IntelliCode
  * Remote - SSH
  * git history
  * Pylance
  * Pylint
  * C++/C
  * Dev containers
  * Docker
  * TODO Highlight
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

* SmarGit
* Nvidia cuda toolkit
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
* Tree -> `sudo apt install tree`

* Notion
* Teamviewer
* nvim
* tmux
* Rectangle window manager

# Shell setup

## zsh
```shell
# Installation
sudo apt install -y zsh
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

## Git
```
brew install git
```

## tmux
Install tmux and config.
https://github.com/gpakosz/.tmux

Install `xclip` for system clipboard.


## Change iterm2 theme and font
Link -> https://iterm2colorschemes.com/
```
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Mariana.itermcolors --output ~/Downloads/Mariana.itermcolors
```
Go to settings in iterm2 and import color theme. Also increase font size.
or Gogh color schemes

## Change gnome-terminal theme
Gogh color scheme.
CHeck out -> https://github.com/Gogh-Co/Gogh#-install

I use Ayu Mirage, Dracula or Atom from Gogh themes.

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
```

Open the "~/.zshrc" file in your desired editor and modify the plugins line to what you see below.
```
plugins=(git fzf zsh-autosuggestions zsh-syntax-highlighting web-search)
```

Then

```
source ~/.zshrc
```

## Fix python issue
`zsh` recognizes `python3` but not `python`. Do the following:
```shell
whereis python  # e.g. /usr/bin/python3
echo "alias python=/usr/bin/python3" >> ~/.zshrc

```

# Virtual machine
* Virtualbox

# Neovim
Copy files to `.config/nvim`, then do `:PackerSync`.
