if [ -z $DYLAN_ANTIGEN_LOC ]; then
    echo "Could not locate antigen. Please set DYLAN_ANTIGEN_LOC"
    exit
fi

# https://github.com/ryanoasis/nerd-fonts
# https://github.com/Powerlevel9k/powerlevel9k

DYLAN_DOTFILES_DIR=${0:A:h}
source $DYLAN_DOTFILES_DIR/powerline.zsh

source /home/dylan/antigen/antigen.zsh

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
antigen theme bhilburn/powerlevel10k powerlevel10k

antigen apply


alias cdrepo="cd ~/Documents/dev"