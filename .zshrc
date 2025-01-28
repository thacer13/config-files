fastfetch --config ~/.config/fastfetch/presets/os.jsonc
fpath+=($HOME/.config/pure)
autoload -U promptinit; promptinit
prompt pure
EDITOR=vim
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
eval "$(zoxide init zsh)"
setopt appendhistory
unsetopt hist_verify
setopt autocd extendedglob
setopt interactivecomments
setopt globdots
unsetopt beep
__git_files () {
    _wanted files expl 'local files' _files
}


source ~/.config/zsh-autocomplete/zsh-autocomplete.plugin.zsh
bindkey -e
bindkey -v
bindkey '`' autosuggest-accept
zstyle :compinstall filename '/home/thacer/.zshrc'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':autocomplete:*complete*:*' insert-unambiguous yes
zstyle ':autocomplete:*' delay 0.1
zstyle ':completion:*' list-max 15
zstyle -e ':autocomplete:*:*' list-lines 'reply=( $(( LINES / 3 )) )'
zstyle ':autocomplete:*' min-input 3
zstyle ':completion:*' list-colors '=(#b)fg=blue,bg=black'
#autoload -Uz compinit && compinit


source <(fzf --zsh)
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh

function list_files() {
    local file_count=$(ls -l | wc -l)
    if [[ file_count -le 20 ]]; then
        echo ""
        ls
    fi
}
function chpwd() {
    list_files
}

