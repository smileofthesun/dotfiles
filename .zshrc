# Lines configured by zsh-newuser-install
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


HISTFILE=$HOME/.config/shell/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Prompt ZSH
autoload -Uz promptinit
promptinit

export PATH="$HOME/.local/bin/:$PATH"

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

mousefix

#Colourize
alias \
        ls="ls -hN --color=auto --group-directories-first" \
        grep="grep --color=auto" \
        diff="diff --color=auto" \


# Commands Software
alias \
        cp="cp -iv" \
        mv="mv -iv" \
        rm="rm -vI" \
        mkd="mkdir -pv" \
        ffmpeg="ffmpeg -hide_banner" \
        es="sdcv -c -u drae" \
        v="$EDITOR" \
        s="ls -v | nsxiv -" \
        z="devour zathura" \
	dmpv="devour mpv" \
	ro="redshift -O 2500k" \
	rf="redshift -x" \


# Commands System
alias \
        sdn="sudo shutdown now" \
        srn="sudo reboot now" \
        ms="sshfs ubuntu@192.168.1.196:/home/ubuntu/server $HOME/server" \
        mso="sshfs ubuntu@10.8.0.1:/home/ubuntu/server $HOME/server" \
        msub="sudo umount -f ~/server" \
        SS="sudo systemctl" \
        zrc="source ~/.zshrc" \
	dock="autorandr -l docked" \
	mobile="autorandr -l mobile" \

# Server
alias \
        srv="ssh ubuntu@192.168.1.196" \
        srvo="ssh ubuntu@10.8.0.1" \
	vpn="sudo openvpn rpi.ovpn" \


# XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"


# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
