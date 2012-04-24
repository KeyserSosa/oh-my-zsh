#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Christopher Slowe <me@keysersosa.com>
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:editor' keymap 'emacs'

# Auto convert .... to ../..
zstyle ':omz:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:terminal' auto-title 'yes'

# Set the plugins to load (see $OMZ/plugins/).
zstyle ':omz:load' plugin 'archive' 'git'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:prompt' theme 'sorin'

# This will make you shout: OH MY ZSHELL!
source "$HOME/.oh-my-zsh/init.zsh"

# Customize to your needs...

path=(~/bin /usr/local/opt/gnu-sed/libexec/gnubin /usr/local/opt/ruby/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/share/python $(brew --prefix coreutils)/libexec/gnubin /usr/local/bin $path)
#path=(~/bin /opt/local/libexec/gnubin/ /opt/local/lib/postgresql91/bin /opt/local/libexec/gnubin/ /opt/local/bin /opt/local/sbin /usr/local/bin /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/ $path)


autoload -Uz promptinit
promptinit
prompt keysersosa

if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='--color=auto -F'
    eval `dircolors ~/.dir_colors`
fi

unsetopt noclobber
unsetopt noglob
. ~/.aliases
stty erase '^?'

if [ -e /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ];
then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export WORKDIR=$HOME/git
export WORK_DIR=$HOME/git
export GOPATH=$HOME/go
path=($GOPATH/bin $path)

#DOCKERSTATE=$(boot2docker status)
#if [ "$DOCKERSTATE" != "running" ]; then
#   echo "Docker's current state is '$DOCKERSTATE'.  Starting"
#   boot2docker start
#fi


# eval "$(docker-machine env dev)"

export HIPBASE=$HOME/git/hipmunk
source $HIPBASE/install/hiprc

export ANDREPANEL=$HOME/git/andrepanel
source $ANDREPANEL/docker/andrerc

# added by travis gem
[ -f /Users/keysersosa/.travis/travis.sh ] && source /Users/keysersosa/.travis/travis.sh
