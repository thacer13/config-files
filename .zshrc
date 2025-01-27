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
setopt globdots
unsetopt beep
bindkey -e
bindkey -v
bindkey '`' autosuggest-accept
zstyle :compinstall filename '/home/thacer/.zshrc'
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
source <(fzf --zsh)
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
#
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
#
fastfetch --config ~/.config/fastfetch/presets/os.jsonc

