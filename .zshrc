# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# source $ZSH/oh-my-zsh.sh
source $HOME/Antigen/antigen.zsh

# User configuration

# Antigen Bundle Manager
# load oh-my-zsh library
antigen use oh-my-zsh

# defaults that come with oh my zsh
# antigen bundle tmux 
antigen bundle git
antigen bundle yarn 
antigen bundle command-not-found

# custom zsh plugins
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# zsh default themes
antigen theme romkatv/powerlevel10k

antigen apply

# Example aliases
# alias canary="open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir='/tmp/canary_dev'"
alias chrome="open -a Google\ Chrome --args --disable-web-security --user-data-dir='/tmp/chrome_dev'"

#source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
