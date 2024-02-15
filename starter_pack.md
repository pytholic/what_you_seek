\*Do shell setup i.e. `oh-my-zsh` before brew and conda, it overwrites `zshrc`.

# Common

Install the following.

- Homebrew
- Chrome
- Jupyter
- VS Code
- Slack
- Tree `brew install tree`
- Htop `brew install htop`
- Docker Desktop
- Notion
- Rectangle window manager
- Virtualbox (if needed)
- llvm compiler `brew install llvm`
- Git
- lazygit, git-kraken, git lens, git graph, git blame

```sh
brew install git

# Configure user for push and stuff
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"

Use personal access token or ssh key to login.
```

- Anaconda/Miniconda

```shell
mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init zsh

conda config --set auto_activate_base false
```

Do `brew install md5sha1sum` if got `md5sum: command not found` error.

- lazygit
  Install `delta` -> https://github.com/dandavison/delta
  Open `~/.gitconfig` and paste configs.

  Open `~/Library/Application\ Support/lazygit/config.yml` and paste:

  ```
  git:
    paging:
      colorArg: always
      useConfig: true
  ```

---

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

iTerm2 -> Preferences -> Profiles. Under `Terminal` tab, you will see `Notifications` header. Toggle the `Silence bell` option

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

Follow:
https://draculatheme.com/iterm

- load the preset
- Set transparency to 20 and blur to 15.

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

## Fix python issue

`zsh` recognizes `python3` but not `python`. Do the following:

```shell
whereis python  # e.g. /usr/bin/python3
echo "alias python=/usr/bin/python3" >> ~/.zshrc

```

---

# VS Code Setup

- Setup
  - Add to PATH on MacOS
    - Open the Command Palette via ⌘⇧P and type shell command and select _"Install code command in PATH" command._
  - Word Wrap -> On
  - Theme: Nord
- Vspacecode
  - Live server
  - Auto rename tag
  - Auto close tag
  - Prettier formatter -> https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode
- vscode-icons
- Markdown All in One
- Spell check
- Python
  - python
  - Python Indent
  - Pylance
  - Pylint
  - Black formatter
  - Ruff
  - isort
  - interrogate
  - auto doc string
  - python type hint
- IntelliCode
- Remote - SSH
- git history
- git graph, git lens
- C++/C
  - C/C++ Extension Pack
- CMake
  - CMake
  - Cmake Tools
  - Cmake Language Support
- Dev containers
- Docker
- TODO Highlight
- TODO tree
- Project Manager
- Better Comments
- Sync-Rsync
  - Sync local to remote and vice versa
  - Automatically switches branches as well

## VSCode fonts

- Size -> 16
- Add `Comic Mono, Hack Nerd Font Mono` to font family.
- WordWrap On
- Autoclose bracket
- default python formatter black
  ```
    "[python]": {
    "editor.defaultFormatter": "ms-python.black-formatter"
  }
  ```
- LineNumbers -> relative
- Auto closing brackets, comments, quotes -> On
- DefaultFormatter -> Prettier

---

# Extras

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

## Change focus between multiple displays

https://medium.com/thevelops-tech-blog/how-to-switch-focus-between-screens-in-macos-21c6f02883a6

## JSON processor

Colorful shell output of json.

```
brew install jq
file.json | jq
```

# Company tools
* Jira
* Slack
  * Enable `banner` notification in mac settings
  * Add apps
* Docswave
* Confluence
