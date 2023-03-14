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
      * Terminal themes
         * https://glitchbone.github.io/vscode-base16-term/#/
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
* nvim
   * NeoSolarized theme
   * yarn, nvm, npm (nvm install node)
   * vim-plug
   * coc-nvim
   * nvim-tree
   * vim-prettier
   * telescope
   * Autopairs
* tmux

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

## tmux
Install tmux and config.
https://github.com/gpakosz/.tmux

## Theme
### Powerlevel10k (Option 1)
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

#### Meslo Font (or use Nerd Fonts)
Also download `Meslo` fonts from p10k repo (must to make it look better).

Add to vscode `settings.json`:
```
"terminal.integrated.fontFamily": "MesloLGS NF"
```

#### Configure p10k
```
p10k configure
```

### Spaceship-prompt
https://spaceship-prompt.sh/
https://github.com/spaceship-prompt/spaceship-prompt

Set `ZSH_THEME="spaceship"` in your `.zshrc`.

### Nerd fonts
https://github.com/ryanoasis/nerd-fonts#option-3-install-script

###

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

I use Ayu Mirage or Atom.

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
Follow the [gist](https://gist.github.com/pytholic/a12facfe28ac8f9bc34ac659f82c83d1)
Can also use `vim-plug` and :PlugInstall with this [vim.init](set scrolloff=10
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set termguicolors

call plug#begin('~/.config/nvim/plugged')
" Colortheme "
Plug 'cocopon/iceberg.vim'
Plug 'overcache/NeoSolarized'
Plug 'morhetz/gruvbox'
" Autocompletion "
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Folder structure "
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
" Prettier formatter "
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" Autopairs "
Plug 'windwp/nvim-autopairs'

Plug 'nvim-lua/plenary.nvim'

" Telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

call plug#end()

" colorscheme iceberg
" colorscheme NeoSolarized
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=none


let mapleader = " "
" nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Nvimtree setup "
nnoremap <silent> <leader>e :NvimTreeToggle<cr>
lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

require("nvim-autopairs").setup {}

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
EOF


" Window keymaps "
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Prettier config "
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#double_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

" Find files using Telescope command-line sugar. "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>).

## Theme
https://github.com/morhetz/gruvbox/wiki/Installation#general
