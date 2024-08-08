#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# set -o vi

# shortcuts
alias rr='cd $HOME/.local/src/arch-dwm && ls -a'
alias h='cd $HOME/ && ls -a'
alias cf='cd $HOME/.config && ls -a'
alias wal='cd $HOME/.local/share/void-wall && ls -a'
alias mu='cd $HOME/.local/music && ls -a'
alias dev='cd $HOME/.local/dev && ls -a'
alias note='cd $HOME/.local/notes && ls -a'
alias img='cd $HOME/.local/img && ls -a'
alias gitr='cd $HOME/.local/git-repos && ls -a'
alias gsite='cd $HOME/.local/hugo-dir && ls -a'
alias ff='fastfetch'
alias ..='cd .. && ls -a'
alias ...='cd ../../ && ls -a'

# Helpful aliases
alias imv='nsxiv'
alias  c='clear'
alias  l='ls -l'
alias ls='ls'
alias la='ls -a'
alias ll='ls -la'
alias ld='tree'
alias ins='sudo pacman -S'
alias qt='pacman -Qt'
alias un='sudo pacman -Rncsu'
alias pc='sudo pacman -Scc' # remove unused cache

# youtube download
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

# NeoVim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias mkdir='mkdir -p'

# git aliases
alias g="git"
alias gst="git status"
alias gc="git commit -m"
alias ga="git add"
alias gpl="git pull"
alias gpom="git push origin master"
alias gpu="git push"
alias gpuom="git push origin main"
alias gd="git diff"
alias gch="git checkout"
alias gnb="git checkout -b"
alias gac="git add . && git commit -m"
alias grs="git restore --staged ."
alias gre="git restore"
alias gr="git remote"
alias gcl="git clone"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gt="git ls-tree -r master --name-only"
alias gb="git branch"
alias gf="git fetch"
