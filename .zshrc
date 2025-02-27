fastfetch --config ~/.config/fastfetch/os.jsonc

export EDITOR=helix
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/scripts:$PATH"
export TERM="xterm-256color"
fpath+=($HOME/.config/pure)
autoload -U promptinit; promptinit
prompt pure

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

eval "$(zoxide init zsh --cmd cd)"
eval "$(batman --export-env)" 
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

setopt EXTENDED_GLOB
setopt GLOB_DOTS
setopt INTERACTIVE_COMMENTS
unsetopt BEEP
unsetopt HIST_VERIFY

__git_files () {
    _wanted files expl 'local files' _files
}

bindkey -v
export KEYTIMEOUT=1
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'm:{a-zA-Z}={A-Za-z} l:|=* r:|=*'

function list_files() {
    local file_count=$(ls -l | wc -l)
    if [[ file_count -le 18 ]]; then
        echo ""
        eza --icons --color
    fi
}
function chpwd () {
    list_files
}

source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.config/zshrc-aliases
source <(fzf --zsh)
