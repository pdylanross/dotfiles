alias cdrepo="cd ~/Documents/dev"
alias please=sudo

eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom settings for a given env
[[ ! -f ~/.zsh_custom ]] || source ~/.zsh_custom
