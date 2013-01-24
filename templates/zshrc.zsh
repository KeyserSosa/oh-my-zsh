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

path=(~/bin /usr/local/share/python $(brew --prefix coreutils)/libexec/gnubin /usr/local/bin $path)
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
