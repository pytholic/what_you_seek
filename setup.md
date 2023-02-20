# System setup

Install the following.
* Ubuntu/macOS
* Git configure
```sh
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
git config credential.helper store or use ssh0key method instead
```
* Chrome
* Sublime text
    * UI Theme -> Default Dark
    * Color Scheme -> Mariana
* Docker

```
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Remove sudo need
sudo groupadd docker
sudo usermod -aG docker $USER

sudo chown root:docker /var/run/docker.sock
sudo chown -R root:docker /var/run/docker

sudo reboot

docker run hello-world

# For desktop
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.15.0-amd64.deb
sudo apt install ./docker-desktop-*-amd64.deb
```

* VS Code
  * Setup
      * Add to PATH on MacOS
         * Open the Command Palette via ⌘⇧P and type shell command and select *"Install code command in PATH" command.* 
      * Auto Save -> onFocusChange
      * Word Wrap -> On
      * Theme: Mariana
         * Then apply this [settings.json](https://github.com/pytholic/what_you_seek/blob/main/config_files/vs_code_settings.json)
  * Extensions
  * Web dev
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

If you install it after the zsh shell then do the following in `.zshrc`
```shell
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pytholic/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pytholic/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pytholic/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pytholic/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```

For `.bashrc`
```shell
# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/pytholic/anaconda3/bin/conda'>
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/pytholic/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pytholic/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/pytholic/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

```

* Notion
* Teamviewer

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

## Git
```
brew install git
```
## Powerlevel10k
```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```
Now that it's installed, open the "~/.zshrc" file with your preferred editor and change the value of "ZSH_THEME" as shown below:
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```
To reflect this change on your terminal, restart it or run this command:
```
source ~/.zshrc
```

To make modification:
```shell
nano ~/.zshrc
nano ~/.p10k.zsh

source ~/.zshrc
source ~/.p10k.zsh
```

## Meslo Font
Also download `Meslo` fonts from p10k repo (must to make it look better).

Add to vscode `settings.json`:
```
"terminal.integrated.fontFamily": "MesloLGS NF"
```

## Configure p10k
```
p10k configure
```

## Change iterm2 theme and font
Link -> https://iterm2colorschemes.com/
```
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Mariana.itermcolors --output ~/Downloads/Mariana.itermcolors
```
Go to settings in iterm2 and import color theme. Also increase font size.
## Change gnome-terminal theme
CHeck out -> https://github.com/Gogh-Co/Gogh#-install

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

