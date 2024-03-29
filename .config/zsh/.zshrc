# ZSH Configurations
source $XDG_CONFIG_HOME/zsh/.zshenv

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init zsh)"

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
export HISTCONTROL=ignoreboth

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
# case insensitive path-completion 
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load zsh-history-substring-search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

setopt auto_cd
function chpwd() {
    emulate -L zsh
    exa --icons --long --header
}

# ------------------ Keybindings   --------------------

# disable flow control keybindings
stty -ixon

bindkey -e

typeset -A key
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"
key[Alt-Left]="${terminfo[kLFT3]}"
key[Alt-Right]="${terminfo[kRIT3]}"
key[Alt-Delete]="${terminfo[kDC3]}"
key[Alt-Backspace]="${terminfo[kbs3]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="^[[A"
key[Down]="^[[B"

[[ -n "${key[Alt-Left]}"  ]] && bindkey -- "${key[Alt-Left]}"  vi-backward-word
[[ -n "${key[Alt-Right]}" ]] && bindkey -- "${key[Alt-Right]}" vi-forward-word
[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  vi-backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" vi-forward-word
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
[[ -n "${key[Alt-Delete]}"    ]] && bindkey -- "${key[Alt-Delete]}"     delete-word
[[ -n "${key[Up]}"    ]] && bindkey -- "${key[Up]}"     history-substring-search-up
[[ -n "${key[Down]}"    ]] && bindkey -- "${key[Down]}"    history-substring-search-down

# ------------------ Custom Config --------------------

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

source ${HOME}/.config/zsh/docker_run_functions.sh
source ${HOME}/.config/zsh/alias.sh
source ${HOME}/.config/zsh/extras/ataka.sh
source ${HOME}/.config/zsh/extras/pythonenv.sh

# eval "$(/home/christoss/.cargo/bin/rtx activate zsh)"
eval "$(mcfly init zsh)"

# neofetch

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/christoss/Documents/fromSource/google-cloud-cli/google-cloud-sdk/path.zsh.inc' ]; then . '/home/christoss/Documents/fromSource/google-cloud-cli/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/christoss/Documents/fromSource/google-cloud-cli/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/christoss/Documents/fromSource/google-cloud-cli/google-cloud-sdk/completion.zsh.inc'; fi
