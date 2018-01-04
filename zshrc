# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# Example aliases
alias jars=~/DevTools/jars/
# alias tmux='TERM=screen-256color-bce tmux'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias readit='tmuxinator readit'
alias utils='tmuxinator utils'
alias octopus='tmuxinator octopus'
alias erlang='tmuxinator erlang'
alias trydjango='tmuxinator trydjango'
alias health='tmuxinator health'
alias loadtest='tmuxinator loadtest'
alias api=~/work/qa-automation-chat-api/
alias work=~/work/
alias notes='cd ~/ && cd notes && nvim' 
alias gimp='/Applications/GIMP.app/Contents/MacOS/GIMP'
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
#export CLICOLOR=1
#export LSCOLORS=gxFxCxDxBxegedabagaced
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"


# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(npm node docker django pip git brew mvn tmux tmuxinator python)

source $ZSH/oh-my-zsh.sh





# Customize to your needs...
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1
# Man page Colors
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode – red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode – bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode – yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode – cyan
#export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home/";
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=~/.virtualenvs
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home/";
export MAVEN_HOME="/Users/varun.ponugoti/DevTools/maven";
export JMETER_HOME="/Users/varun.ponugoti/DevTools/jmeter";
export GRADLE_HOME="/Users/varun.ponugoti/DevTools/gradle";
export EDITOR="nvim";
export GIT_EDITOR="nvim"
export ARCHFLAGS="-arch x86_64"
export MYVIMRC="~/.config/nvim/init.vim"


. `brew --prefix`/etc/profile.d/z.sh
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$JAVA_HOME/bin:$JMETER_HOME/bin:$PATH

source /usr/local/bin/virtualenvwrapper.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
