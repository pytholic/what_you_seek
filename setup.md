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
  * Pylint
  * autopep8/black
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

* Filezilla
* Notion
* Teamviewer

# Shell setup
Change background to `black` and `fontsize` to 11.

## fzf (better reverse search)
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

## zsh
```shell
# Installation
sudo apt install -y zsh
chsh -s $(which zsh)  # set to default
```
Else set it to default from `gnome-shell` preferences -> [link](https://askubuntu.com/questions/342299/zsh-is-not-launched-while-opening-a-new-terminal-with-gnome-terminal)

## power10k
Link -> https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
p10k configure

nano ~/.p10k.zsh  # edit config
source ~/.p10k.zsh

# Anaconda environment color
typeset -g POWERLEVEL9K_ANACONDA_FOREGROUND=0
typeset -g POWERLEVEL9K_ANACONDA_BACKGROUND=13
```

Also download `Meslo` fonts for it (must to make it look better).

To make modification:
```shell
nano ~/.zshrc
nano ~/.p10k.zsh

source ~/.zshrc
source ~/.p10k.zsh
```

## zsh-autocomplete
Link -> https://github.com/marlonrichert/zsh-autocomplete

Clone the repo:
```
% cd ~/Git  # ...or wherever you keep your Git repos/Zsh plugins
% git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
```

Add at or near the top of your .zshrc file (before any calls to compdef):
```
source ~/Git/zsh-autocomplete/zsh-autocomplete.plugin.zsh
```

Remove any calls to `compinit` from your .zshrc file.

If you're using Ubuntu, add to your .zshenv file:
```
skip_global_compinit=1
```

Then restart your shell.

