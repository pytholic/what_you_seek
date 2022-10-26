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
* 
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

Add to bash:
nano ~/.bashrc
. /usr/share/doc/fzf/examples/key-bindings.bash
```
