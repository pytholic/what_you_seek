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

conda search <package name>  # list all available package versions

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

pip index versions <package name>  ## list all available package versions

pip install --upgrade --force-reinstall <package>

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

dh -h  # show disk storages in GB
du . -h  # show subdirectories size in GB
du <folder name> -h

cat filename.ext  # display file contents
head -5 filename.ext  # display first 5 lines of the file

# Show files and directories
ls 
ls -l
ls -a  # show hidden files
ls -lh  # list file with permissions and size

ls directory | wc -l  # count number of files inside a directory

Ctrl+F10 E  # open terminal in current dir

########################################################

# Schedueled shutdown
sudo shutdown -P 20:00  # at 20:00
sudo shutdown -P +30  # after 30mins
sudo shutdown -P now

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

ls "$PWD/images/"*.*  >> ./filenames.txt  # absolute filenames to txt

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

############################https://stackoverflow.com/questions/22907231/how-to-copy-files-from-host-to-docker-container##########################

# System fix
ctrl+atl+dell  # system restart
ctrl+alt+F4  # open tty4
ctrl+alt+F1  # logout screen

alt+sysrq+reksub  # Force reboot
https://www.thegeekstuff.com/2008/12/safe-reboot-of-linux-using-magic-sysrq-key/

####################################################

# Processes 
ctrl+z  # suspend
ctrl+d  # kill terminal
ctrl+c  # kill process

sudo kill -9 PID

jobs  # shows suspended processes
sudo kill %<id>  # kill job with id

ps aux  # shows all processes
ps aux | grep vim  # list all vim processes

##################################################

# Log files
sudo ls /var/log/syslog
cat /var/log/syslog
grep <something> /var/log/syslog


##################################################

# Change permissions
chmod 777 <path to folder>
chmod -R 777 <path to folder>

# Monitoring
watch free -m  # watch system free memory 
watch -n 1 nvidia-smi  # watch nvidia-smi every second
watch -n 5 "ls <directoryu> | wc-l"  # mind the quotes

########################################################

# Loops
for i in `seq 1 10`; do echo $i; done 

if [[ $3 =~ ^(-s|--server_ip) ]]
then
    server_ip="$4"
fi

########################################################

# GCC
dpkg --list | grep compiler  # list installed gcc versions
CC=/usr/bin/gcc-9 CXX=/usr/bin/g++9 CUDAHOSTCXX=/usr/bin/g++-9 cmake ..   # using diff gcc

```

# Server commands
```shell
ssh <username>@<address>  # connect to server
```


**Add network commands
**Add display manager commands
**Add systemctl commands

# Git commands
```
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

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

# Cloning a repo with branches
git clone <url>  # You will have main locally only, remote will be in track
git fetch --all
git branch -a  # show all branches
git switch <branch name>  # switches to branch and creates it locally, switch to already existing branch
git checkout <branch name>  # switches to branch and creates it locally, switch to already existing branch

git check -b <branch name>  # creates and switches to a new local branch>

git fetch  # gets info on branches but doesn't change local branches, update branch info
git pull  # fetches and merges
git fetch --all, git pull --all  # do for all branches

git branch -d <branch name>  # delete branch

git fetch
git switch
git pull

git pull origin other-branch  # pull a branch

git push -d <remote_name> <branchname>  # delete remtoe branch
git branch -d <branchname>  # delete local branch

// delete branch locally
git branch -d localBranchName

// delete branch remotely
git push origin --delete remoteBranchName

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
You need to commit submodule chaneghs separately.
If you do not want to push submodule, then just commit it and only push the main branch.

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
git rm -rf --cached .

```

## Commit
```sh
git checkout <commit number>  # rollback to previous commit
git log  # view all commits
git reflog  # veiw commits
git log --graph
git reset HEAD~1  # revert last commit which is not pushed yetgit reset HEAD~1
git reset HEAD^  # undo last commit (unstaged)
git reset  # undo last add

```

## Merge vs. Rebase
**Merge** keeps seprate history for `branch` and `main` just says "branch merged ..." in the commit. When we delete `branch` all commit history is also lost.
**Rebase** takes commit from a `branch` and places them on top of `main` and we get a linear commit history.
To rebase current branch to main:
```sh
git rebase main
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

# FFMPEG
```sh
ffmpeg -i abc.mp4 image%06d.jpg  # extract all frames

for i in *.webm; do ffmpeg -i "$i" "${i%.*}.mp4"; done  # convert all videos

```

# TMUX
```shell
sudo apt install tmux
```

`Prefix = Ctrl + b`

```shell

```

## Pane shortcuts
```shell
Prefix + %  # split-window -h (split horizontally)
Prefix + "	# split-window -v (split vertically)
Prefix + {	# Move the current pane left
Prefix + {	# Move the current pane right
Prefix + (↑ ↓ ← →)	# Switch to pane to the direction
Prefix + q	# Show pane numbers
Prefix + 0 … 9	# Switch/select pane by number
Prefix + z	# Toggle pane zoom
Prefix + !	# Convert pane into a window
Prefix  Ctrl + (↑ ↓)	# Resize current pane height (after Prefix, hold down the Ctrl key while tapping the up or down key)
Prefix  Ctrl + (← →)	# Resize current pane width (after Prefix, hold down the Ctrl key while tapping the right or left key)
Prefix + x	# Close current pane
Prefix + Spacebar	# Toggle between pane layouts
Prefix + o 	# Switch to next pane

exit  # closes current pane
```

## Window shortcuts
```shell
Prefix + c  # create new window
Prefix + <window name>  # switch window
Prefix + ,  # Rename a window
exit  # closes the window
```

## Session commands
Preserves state and processes. You can resume from where you stopped. Process is not terminated, it runs in the background.
```shell
Prefix + d  # detach current session
tmux ls  # shows running sessions
tmux attach -t <session name>  # attaches session
tmux rename-session -t <current name> <new name>  # rename a session
tmux new -s <session name>  # create session with specific name
tmux kill-session -t <session name>  # kill a session
```

# Mac Shortcuts
```
ctrl + right/left # switch between desktops
cmd + ctrl + q # lockscreen
cmd + q # close application
cmd + w # new window
cmd + t # new tab
cmd + { or } # tile windows, custom set
cmd + up # go back in finder
cmd + down # go inside the folder
cmd + right # go forward in browser 
cmd + left # go back in browser 
cmd + v # paste
cmd + option + v # move or cut paste 
cmd + c # copy
cmt + Tab # switch between apps
cmd + m # minimizes all windows
cmd + ctrl + f # fullscreen mode
cmd + shift + n # creates new folder
cmd + ctrl + q # locks the screen
cmd + 1,2,3 # switch between tabs
cmd + shift + 4 # allows you to take screenshot
cmd + shift + delete # empties trash
fn + up/down # scrolls page
cmd + shift + . # toggle hidden files
cmd + ctrl + space # opens emoticonss
click(startpoint), shift+click(endpoint) # selecting longer texts
```

## Mac terminal
```
cmd + c # copy
cmd + v # paste
ctrl + l # clear
open -a "Sublime Text" # open application
open -a "Sublime Text" index.html # opening specific file
mc index.html test.html # rename
rm <filename> # remove file
rm -r <directory> # remove directory
say <text> # voice text
cmd + right # move cursor to the end of line
cmd + left # move cursor to beginning of line
option + left/right # jump one word back/forward
```
# VS Code shortcuts (MacOS)
```
cmd + l # select current line
shift + up, down # select multiple lines
alt/option + click # add multiple cursors
cmd + right # move cursor to the end of line
cmd + left # move cursor to beginning of line
cmd + up # move cursor to beginning of file
cmd + down # move cursor to end of file
cmd + double click # open file in split tab
double click # open in new tab
cmd + z # undo
cmd + shift + z # redo
```
