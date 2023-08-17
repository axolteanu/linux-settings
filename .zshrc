#Aliases
alias vim=nvim
alias ls='ls --color'
alias ll='ls -l --color'
alias lal='ls -al --color'
alias grep='grep --color=auto'
alias ez="vim $HOME/.zshrc"
alias sz="source $HOME/.zshrc"
alias ei="vim $HOME/.config/i3/config"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Use modern completion system
autoload -Uz compinit
compinit
zstyle ':completion:*' menu yes select interactive
zstyle ':completion:*' completer _extensions _complete _approximate
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# Zplug
source /usr/share/zplug/init.zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "junegunn/fzf"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
#zplug "themes/jtriley", from:oh-my-zsh, as:theme
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# Prompt
PROMPT="%{$fg_bold[cyan]%}%n%{$fg[blue]%}@%{$fg_bold[magenta]%}%m %{$fg_bold[white]%}%d
%{$fg_bold[yellow]%}> %{$reset_color%}"

#PROMPT="%{$fg_bold[white]%}%T %{$fg_bold[cyan]%}%n%{$fg[white]%}@%{$fg_bold[magenta]%}%m %{$fg_bold[green]%}%d
#%{$fg_bold[yellow]%}> %{$reset_color%}"

export PATH=$PATH:/usr/local/go/bin
