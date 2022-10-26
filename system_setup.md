# System setup

Install the following.
* Ubuntu
* Sublime text
* VS Code
  * Markdown All in One
  * Jupyter
  * python
  * IntelliCode
  * Remote - SSH
  * Git Graph
  * Pylance
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
```

* Filezilla
* Notion
* Teamviewer
* fzf (better reverse search)
```shell
sudo apt-get install fzf

############
Add to bash
############
nano ~/.bashrc
. /usr/share/doc/fzf/examples/key-bindings.bash

######################
Add to zshrc (for zsh)
######################
# Append this line to ~/.zshrc to enable fzf keybindings for Zsh:
source /usr/share/doc/fzf/examples/key-bindings.zsh

#Append this line to ~/.zshrc to enable fuzzy auto-completion for Zsh:
source /usr/share/doc/fzf/examples/completion.zsh
```

* zsh
```shell
# Installation
sudo apt install -y zsh
chsh -s $(which zsh)  # set to default
```
* power10k
```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
p10k configure
```

Else set it to default from `gnome-shell` preferences -> [link](https://askubuntu.com/questions/342299/zsh-is-not-launched-while-opening-a-new-terminal-with-gnome-terminal)
