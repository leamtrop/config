# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux docker autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

screenfetch

autoload -Uz compinit
compinit
# End of lines added by compinstall

# plugins
plugins=(git autojump ssh-agent)

# autojump
[[ -s /home/m/.autojump/etc/profile.d/autojump.sh ]] && source /home/m/.autojump/etc/profile.d/autojump.sh

alias startx='startx &> ~/.xlog'
#alias ll='ls -al'
alias xup='xrdb ~/.Xresources'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias mkdir='mkdir -p -v'

# just some convenience aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -lhX --group-directories-first'
alias ll='ls -alqhH --group-directories-first --color=auto --time-style="+%Y-%m-%d %H:%M:%S"'
alias df='df -h'
alias :q='exit'
alias ZZ='exit'
alias lsgroups='cut -d: -f1 /etc/group'
alias o='xdg-open'
alias wifi='sudo wifi-menu'
alias vi='vim'

# programs
alias mix=alsamixer
alias tab='i3-msg layout tabbed && '
alias chromium='nohup chromium >/dev/null 2>&1'
alias dropbox='nohup proxychains dropbox >/dev/null 2>&1'
alias teamviewer='sudo systemctl start teamviewerd.service && teamviewer'
alias subl='LD_PRELOAD=/opt/sublime_text_3/libsublime-imfix.so subl3'
alias subl3='LD_PRELOAD=/opt/sublime_text_3/libsublime-imfix.so subl3'

# config files
alias i3c='vim ~/.i3/config'
alias i3s='vim ~/.i3/i3status.conf'
alias ala='vim ${ZSH}/custom/aliases.zsh'

# pacman stuff
alias pacs='sudo pacman -S'
alias pacss='pacman -Ss'
alias pacr='sudo pacman -Rns'
alias aur='packer -S'
alias syu='sudo pacman -Syu'
alias rncs='sudo pacman -Rncs'

# Docker
alias startlnmp='docker start mysql phpfpm nginx'
alias stoplnmp='docker stop mysql phpfpm nginx'
alias dellnmp='docker rm -f mysql phpfpm nginx'
