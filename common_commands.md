# Kubectl
```
kubectl config get-clusters
kubectl config get-contexts

kubectl get pods # list all the Pods in your namespace
kubectl get deployments
kubectl run hello-world --image <image> # Run image as a container in Kubernetes

kubectl describe pod hello-world
kubectl delete pod hello-world

kubectl create -f hello-world-create.yaml # create a Pod using the provided configuration file

kubectl expose deployment/hello-world # expose it to the internet

kubectl apply -f deployment.yaml # run image as deployment

kubectl scale deployment hello-world --replicas=3 # scale up deployment
kubectl scale deployment hello-world --replicas=1 # scale down deployment

kubectl get all
kubectl get secret
kubectl get configmap

kubectl logs <pod-name>

# Rollout updates
kubectl set image deployment/hello-world hello-world=us.icr.io/$MY_NAMESPACE/hello-world:2
kubectl rollout status deployment/hello-world
kubectl get deployments -o wide
kubectl rollout undo deployment/hello-world
kubectl rollout status deployment/hello-world

# Autoscale
kubectl autoscale deployment hello-world --cpu-percent=5 --min=1 --max=10
kubectl get hpa hello-world
kubectl get hpa hello-world --watch
kubectl delete deployment hello-world
kubectl delete service hello-world

# Delete all
kubectl delete deployments --all
kubectl delete pods --all
kubectl delete deployments,services,pods --all --all-namespaces
kubectl delete deployments,services,pods -l your_label=your_value # label selection
```

# Mac Shortcuts
```
ctrl + right/left # switch between desktops
cmd + ctrl + q # lockscreen
cmd + q # close application
cmd + w # new window, close browser window
cmd + t # new ta b
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
ctrl + Tab # switch browser tabs
cmd + Tab # switch apps
cmd + ctrl + f # full screen, no tabs
cmd + shift + f # fullsreen with tabs
ctrl + tab # swicth between tabs
cmd + delete # delete file
ctrl + shift + F4 # swutch between split screen
ctrl + 1,2,3,4 # switch desktops
```

## Mac terminal
```
cmd + c # copy
cmd + v # paste
ctrl + l # clear
ctrl + u # delete till end
ctrl + k # delete till beginning
ctrl + w # delete last word
open -a "Sublime Text" # open application
open -a "Sublime Text" index.html # opening specific file
mv index.html test.html # rename
rm <filename> # remove file
rm -r <directory> # remove directory
say <text> # voice text
cmd + right # move cursor to the end of line
cmd + left # move cursor to beginning of line
option + left/right # jump one word back/forward
```
---

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
cmd + shift + . # search objects on page
cmd + shift + o # search objects on page
cmd + p + @ # search on page
alt + up/down # move line up down
ctrl + x # cut line
cmd + D # select cursor word, pressing again select nex toccurence with another cursor
cmd + super + L # select all occurence and enable multiple cursors
cmd + B # hide side bar
! + Tab # create html template
cmd + P # search files
cmd + shift + p # command pallete
opt + left/right # jump to beginning/end of word
! + shift+1/Tab # write base html snippet
cmd + super + k # delete enitire row
options + shift + down # copies line to row below
shift + alt + arrow # selecting blocks
cmd + shift + e # switch between explorer and code window

cmd + \ # split terminal, split window
ctrl + w # close splitted window
ctrl + d # close splitted terminal
cmd + opt + arrow # switch terminal
cmd + backspace # kill terminal
    
cmd + opt + left/right # switch between windows
ctrl + g # go to line
ctrl + r # show recent folders

ctrl + ~ # focus on terminal
ctrl + 1,2 # focus on editor

ctrl + fn + up/down arrow # scroll window

ctrl + cmd + shift + arrow # expand seelction

cmd + b # show/hdie sidebar

cmd + p # search file by name
ctel + tab # switch files


```
---

# TMUX
```
sudo apt install tmux
```
Using this [config](https://github.com/gpakosz/.tmux).

`Prefix = Ctrl + b or Ctrl + a`

## Commands
```
tmux new-session -s <session-name> # cerate new session with name
prefix : new

tmux detach
tmux attach-session -t <session-name>
prefix + - # split vertically
prefix + _ # split horizontally
tmus ls # list all sessions
tmux kill-session -t <session-name>
tmux rename-session <new name>
tmux rename-window <new name>
prefix + c # create new pane
prefix + s # switch session
prefix + d # detach
prefix + $ # rename session
prefix + , # rename pane
prefix + s # show sessions
Ctrl+B :kill-window or Ctrl+B & # kill window
```


## Pane shortcuts
```
tk 0 # kill all panes except 0
tmux ls # list all session
tmux new-session 
tmux kill-session -t 0 # kill session 0
Prefix + -  # split-window -h (split horizontally)
Prefix + _	# split-window -v (split vertically)
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
Prefix + : # enter command mode
swap-window -t 0 # swap current window with window 0, reorder
tmux kill-session
Prefix + d # detach session
```

## Window shortcuts
```shell
Prefix + c  # create new window
Prefix + <window name>  # switch window
Prefix + ,  # Rename a window
exit  # closes the window
```

## Session commands
Prefix -> ctrl+a
Preserves state and processes. You can resume from where you stopped. Process is not terminated, it runs in the background.
```shell
Prefix + d  # detach current session
tmux ls  # shows running sessions
tmux attach -t <session name>  # attaches session
tmux rename-session -t <current name> <new name>  # rename a session
tmux new -s <session name>  # create session with specific name
tmux kill-session -t <session name>  # kill a session
shift + drag # copy to system clipboard
prefix + c # new window
```
---

# Ubuntu shortcuts
Refer to the [link](https://help.ubuntu.com/stable/ubuntu-help/shell-keyboard-shortcuts.html.en)
---

# Podman commands
Alternative for Docker.

Refer to official [link](https://docs.podman.io/en/latest/Commands.html)
---

# Vim/Nvim
Common keymaps are defined below.
Custom can be found in my config at [keymaps.lua](https://github.com/pytholic/pytholic-lvim/blob/main/lua/user/keymaps.lua)

## Navigation
```
w # move word forward
b # move word backwards
shift + 4 # move end of line
shift + 6 move beginning of line
{ # jump up next whiteline
} # jump down next white line
ctrl + f # move to next page
ctrl + b # move to prev page
gg or [[ # top of file
G or ]] # end of file
ctrl + d # scroll half oage down
ctrl + u # scroll half hage up
shift + up # scroll one page up
shift + down # scroll one page down
<number> + k/up # jump number of lines upward
<number> + j/down # jump number of line downward
ctrl + o # go to prev file / action
ctrl + i # go to next file / action
```

## Insert
```
i # insert to left
a # insert to write
o # insert next line
I # insert at the beginning of line
A # insert at the end of line
O # move current line down and enter insert mode
```

## Splits
```
:split # horizontal split 
:vsplit # vertical split
<ctrl + w> + h/left # switch to left split
<ctrl + w> + h/right # switch to right split
<ctrl + w> + j/left # switch to down split
<ctrl + w> + k/right # switch to up split
```

## copy-paste
```
yy # yank/copy current line
yw # copy till end of word
yb # copy till beginner of word
p # paste on next spot
P # paste on current position

v # visual select mode
V # visual line select mode
ctrl + v # block visual mode
```
---


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
---

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
---

# Common shell commands (ubuntu/unix)
```shell

cat /etc/issue # distribution version

############################################
ctrl+shift+t  # new terminal tab
ctrl+alt+t  # new terminal window
ctrl+l  # shift terminal text up
clear  # clear text in terminal
ctrl+u  # remove all text
ctrl+k  # remove from cursor till end
ctrl + a  # move to the beginning of line
ctrl + e  # move to the end of line
alt _ right/left  # move one word

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
ls -ll # permissions
ls -lsah

ls directory | wc -l  # count number of files inside a directory

Ctrl+F10 E  # open terminal in current dir

ctrl + A  # move cursor to the beginning of line
ctrl + E  # move cursor to the end of line
alt + f  # jump to beginning of next word
alt + b  # jump to beginning of prev word

ctrl+u  # Remove all before
ctrl+k  # Remove all after
ctrl+r  # Reverse search
ctrl+shift+c  # Copy
ctrl+shift+c  # Paste

xdg-open <path>  # open folder using terminal
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
du -h --max-depth=1 . # check size of each folder 
######################################################

# Unzip
tar –xvzf documents.tar.gz  # tar file
unzip <filename>  # zip file
sudo apt install fastjar
jar xvf videos.zip  # zip file
tar -xf file_name.tar -C /target/directory
tar -xf file_name.tar --directory /target/directory

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
---

# Server commands
```shell
ssh <username>@<address>  # connect to server
```


**Add network commands
**Add display manager commands
**Add systemctl commands
---

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
git diff # what changed

git pull --allow-unrelated-histories

git remote remove origin

git remote update origin --prune # update remtoe repos

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

//Remove initial commit
git update-ref -d HEAD


```

## Remove remote files and folders
```
git rm -r --cached <folder name>
git rm --cached file1 file2
git commit -m "commit message"
git push origin main
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
git clone --recurse-submodules <URL>

# Pull submodules after clone
git pull --recurse-submodules
git submodule update --recursive

git submodule sync
git submodule update --init --recursive

```
You need to commit submodule changes separately.
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
```
git reflog  # see previous commits
git log --graph

jupyter nbconvert main.ipynb --to python # convert .ipynb to .py
```

## Ignore changes
```
git reset # remove add and staged changes
git revert <commit id> # go to prev commit
```
---

# FFMPEG

```
ffmpeg -i abc.mp4 image%06d.jpg  # extract all frames
for i in *.webm; do ffmpeg -i "$i" "${i%.*}.mp4"; done  # convert all videos
```



