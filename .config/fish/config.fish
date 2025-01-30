function fish_greeting
    fastfetch --config ~/.config/fastfetch/os.jsonc
end

bind ` accept-autosuggestion
zoxide init fish | source
