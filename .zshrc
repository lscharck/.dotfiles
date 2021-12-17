#promt
#PROMPT='%B%F{green}%n%f %F{green}[%f %B%F{55}%(5~|…/%3~|%~)%f%b %B%F{green}]%b%f%B%F{blue}%#%b%f '
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
PURE_GIT_PULL=0
PURE_CMD_MAX_EXEC_TIME=10
zstyle ':prompt:pure:prompt:success' color '#00ff5f'
prompt pure

#path
export PATH="/Users/lukescharck/bin:$PATH"

#homebrew
export PATH="/opt/homebrew/bin:$PATH"

#colors
blue='\033[0;34m'
red='\033[0;31m'
green='\033[0;32m'
cyan='\033[0;36m'
purple='\033[0;35m'
orange='\033[0;33m'
yellow='\033[1;33m'

#ip header
IP=$(ifconfig en0 |grep "\<inet\>" | awk '{ print $2 }')
eth=$(ifconfig en5 2> /dev/null |grep "\<inet\>" |awk '{ print $2 }')
if [ $? != 0 ]; then
	eth=$''
fi
VPN=$(scutil --nwi | grep "\<VPN\>" | awk '{ print $4 }')
printf "${blue}$IP ${green}$eth ${red}$VPN\n"

#usefull settings
alias ls='ls -G'
alias exi='exit'
alias vim='nvim'
alias tree='tree -C'
chpwd() ls -Ga
export TERM="xterm-256color"
export EDITOR='vim'
export LANG=en_US.UTF-8

#zsh autosuggest
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_USE_ASYNC='true'
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6c6c6c"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# history
export HISTFILE=~/.zsh_history
export SAVEHIST=1000000
export HISTSIZE=1000000
#setopt HIST_FIND_NO_DUPS
#setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt CORRECT_ALL
setopt ALWAYS_TO_END
setopt HIST_REDUCE_BLANKS
setopt AUTO_CD

#vi mode
bindkey -v

# search history
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

#zsh syntax highlight
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#add homebrew libraries
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

# gnupg key set
export GPG_TTY=$(tty)

# export path
export PATH="/Users/lukescharck/.bin:$PATH"
