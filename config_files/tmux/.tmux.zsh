# Some tmux-related shell aliases

# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

# Creates a new session
alias tn='tmux new-session'

# Lists all ongoing sessions
alias tl='tmux list-sessions'

# rename window
alias tr='tmux rename-window'

# pane title
alias tp='tmux select-pane -T'

# kill panes
alias tk='tmux kill-pane -a -t'

tsplit() {
        if [ $1 -lt 4 ]; then
                return;
        fi

        if [ $1 -eq 4 ]; then
                tmux split-window -h;
                tmux split-window -v;
                tmux select-pane -L;
                tmux split-window -v;
                return;
        fi

        log2_odd_even=$(($(echo "l($1)/l(2)" | bc -l | xargs printf '%.0f')%2))

        if [ $log2_odd_even -eq 0 ]; then
                tmux split-window -v;
                tsplit $(($1/2));
                tmux select-pane -U;
                tmux select-pane -U;
                tsplit $(($1/2));
        else
                tmux split-window -h;
                tsplit $(($1/2));
                tmux select-pane -L;
                tsplit $(($1/2));
        fi
}
