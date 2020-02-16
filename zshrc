# https://github.com/ryanoasis/nerd-fonts
# https://github.com/romkatv/powerlevel10k

source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions


antigen bundle git
antigen bundle kubectl
antigen bundle npm
antigen bundle docker
antigen bundle eastokes/aws-plugin-zsh
antigen bundle hanjunlee/terraform-oh-my-zsh-plugin
antigen bundle laggardkernel/zsh-thefuck

export NVM_AUTO_USE=true
antigen bundle lukechilds/zsh-nvm

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
antigen theme romkatv/powerlevel10k

antigen apply


alias cdrepo="cd ~/Documents/dev"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
