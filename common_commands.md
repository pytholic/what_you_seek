# Conda commands
```sh
conda config --set auto_activate_base false  # deactivate base env
export CONDA_AUTO_ACTIVATE_BASE=false

conda install <package name>
conda uninstall <package name>

conda --version
conda env create --name <env name> --python=3.7
conda activate <env name>
conda deactivate

conda clean --all  # clean temp downloaded files

conda env list  # list all envs
conda env remove --name myenv  # remove an env
conda env create -f env.yml  # create from yaml file

conda env export -n <env name> > env.yml  # export env yaml


conda list  # list all packages installed into the environment
conda list -n myenv  # save packages for future use:
conda list --export > package-list.txt  # reinstall packages from an export file:
conda create -n myenv --file package-list.txt

conda list >requriements.txt
conda install --file requirements.txt

conda config --set auto_activate_base false  # deactivate base env from the terminal

conda env export --no-builds  # without strict version number(?) 

conda env create -f environment.yaml
```

# Pip commands
```sh
pip install <package name>
pip uninstall <package name>

pip cache purge  # clean temp files
pip freeze > requirements.txt
pip install -r requirements.txt
pip list --format=freeze > requirements.txt  # to fix @ absolute symbol issue
pip list --format=freeze > requirements.txt  # removes "path" strings
```

# Common pip and conda packages
```
pip install opencv-python
pip install sklearn
pip install matplotlib
pip install notebook
pip install tensorboard
pip install pandas
pip install pillow

conda install -c open3d-admin open3d
```

# Common DL packages
```
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip install pytorch-lightning

conda install -c conda-forge tensorflow-gpu
```

# Common shell commands
```shell
############################################
ctrl+shift+t  # new terminal tab
ctrl+alt+t  # new terminal window
ctrl+l  # shift terminal text up
clear  # clear text in terminal
ctrl+u  # remove all text
ctrl+k  # remove from cursor till end

df -h  # display drive storage info
ps la  # list all processes

mv file.txt document.txt  # rename

mv <src> <dst>  # move

dh -h  # show disk storages

##############################################

# Bash script

touch droid.sh
nanp droid.sh

###############
#!/bin/zsh
source ~/miniconda3/etc/profile.d/conda.sh
cd ~/projects/uav_mapping/DROID-SLAM
conda activate droidenv
##############

chmod +x droid.sh
./droid.sh

. ./droid.zsh  # if cd does not work or run in current shell

##########################################################

# Directories
cd ..
ls -a  # show hidden files too
mkdir
cp example.txt abc.txt  # copy file

rm -r <file name>  # remove recursively
rm -r -f <file name>  # force removal, don't have to say 'y' for write protected

######################################################

# Unzip
tar –xvzf documents.tar.gz  # tar file
unzip <filename>  # zip file
sudo apt install fastjar
jar xvf videos.zip  # zip file

######################################################

# Folder permissions
chmod 777 .
chmod -R 777 .  # resursive

# Set GPU globally
export CUDA_VISIBLE_DEVICES=1

cp example.txt ~/Documents/file.txt  # copy file

bindkey | grep fzf  # fzf key bindings

######################################################

# 
ctrl+atl+dell  # system restart
ctrl+alt+F4  # open tty4
ctrl+alt+F1  # logout screen

alt+sysrq+reksub  # Force reboot
https://www.thegeekstuff.com/2008/12/safe-reboot-of-linux-using-magic-sysrq-key/

```

# Server commands
```shell
ssh <username>@<address>  # connect to server
```


**Add network commands
**Add display manager commands
**Add systemctl commands

# Git commands
```shell
# STEPS
git init
git remote add origin <url>
git status
git add .
git status
git commit -m 'Initial index commit'
git status
git push origin main

git pull --allow-unrelated-histories

git remote remove origin
```
## Branching
```shell
git branch <branch name>  # create branch
git branch --list
git checkout <branch name>   # change branch

git checkout -b <branch name>  # create and change branch

git fetch origin or git fetch origin <branch:branch>
```

## Submodules
```shell
git submodule add	

rm -rf projectfolder
git rm -r projectfolder

https://stackoverflow.com/questions/12898278/issue-with-adding-common-code-as-git-submodule-already-exists-in-the-index/14815959
https://git-scm.com/book/en/v2/Git-Tools-Submodules

# Cloning
git submodule init
git submodule update 
or
git clone --recurse-submodules <url>
```

## Large files
```shell
git lfs install
git lfs track "*.psd"
git add .gitattributes
```

## Gitignore
```shell
https://docs.github.com/en/get-started/getting-started-with-git/ignoring-files
https://github.com/github/gitignore

touch .gitignore

#If you want to ignore a file that is already checked in, you must untrack the file before you add a rule to ignore it. From your terminal, untrack the file.

git rm --cached FILENAME
```

## Save credentials
```shell
https://git-scm.com/docs/git-credential-store

git config credential.helper store
git push http://example.com/repo.git
Username: <type your username>
Password: <type your password>

[several days later]
git push http://example.com/repo.git
[your credentials are used automatically]
```

## Miscellaneous
```shell
git reflog  # see previous commits
```

