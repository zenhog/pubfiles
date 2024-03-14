function prependpath() {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="$1${PATH:+:$PATH}"
            ;;
    esac
}

unset PATH

prependpath '/bin'
prependpath '/sbin'
prependpath '/usr/bin'
prependpath '/usr/sbin'
prependpath '/usr/local/bin'
prependpath '/usr/local/sbin'

prependpath "$HOME/.node_modules/bin"
prependpath "$HOME/.luarocks/bin"
prependpath "$HOME/.cargo/bin"
prependpath "$HOME/.local/bin"
prependpath "$HOME/.bin"

unset prependpath

export PATH

export MANPATH="$HOME/.local/share/man:$MANPATH:"

umask 022

export EDITOR=vim
export VISUAL=vim

export PAGER=less
export LESS="-rFX"

export BROWSER=elinks

if [[ -n "$DISPLAY" ]]; then
    export BROWSER="firefox -p main"
fi

if [[ -z "$PULSE_SERVER" ]]; then
    export PULSE_SERVER="/tmp/user/$USER/pulse/native"
fi

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

export SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"
export DBUS_SESSION_BUS_ADDRESS="unix:path=$HOME/.dbus-session"
