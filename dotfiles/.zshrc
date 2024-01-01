# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### fzf setup ###
# for zshrc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# for bashrc
if [ -f /usr/share/bash-completion/completions/fzf ]; then
  source /usr/share/bash-completion/completions/fzf
fi

if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then
  source /usr/share/doc/fzf/examples/key-bindings.bash
fi


### zsh-autocomplete ###
#source ~/packages/zsh-autocomplete/zsh-autocomplete.plugin.zsh


### powerlevel10k setup ###
source ~/packages/powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Command history setup
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE


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


# CUDA setup
export CUDA_HOME=/usr/local/cuda
export PATH=/usr/local/cuda/bin:$PATH
export LIBRARY_PATH=/usr/local/cuda/lib64:$LIBRARY_PATH
