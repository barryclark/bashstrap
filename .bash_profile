### Aliases

# Open specified files in Sublime Text
# "s ." will open the current directory in Sublime
alias s='open -a "Sublime Text"'

# Colour LS
alias ls="command ls -lahFG"

# Colour Tree
# You must install tree first - "brew install tree"
alias tree='tree -aldCL 2 --dirsfirst'

# Colour grep
export GREP_OPTIONS='--color=auto'

# Macvim
# You must install mvim first - "brew install mvim"
alias vim='mvim -v'

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcut to my Development folder in my home directory
alias dev="cd ~/Development"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Colored up cat!
# You must install Pygments first - "sudo easy_install Pygments"
alias c='pygmentize -O style=monokai -f console256 -g'

# Git 
# You must install Git first - ""
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'


### Prompt Colors 
# Modified version of @gf3’s Sexy Bash Prompt 
# (https://github.com/gf3/dotfiles)
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
	tput sgr0
	BLACK=$(tput setaf 190)
	MAGENTA=$(tput setaf 5)
	ORANGE=$(tput bold; tput setaf 172)
	GREEN=$(tput setaf 2)
    LIGHT_GREEN=$(tput bold; tput setaf 2)
    BLUE=$(tput setaf 4)
    LIGHT_BLUE=$(tput bold; tput setaf 4)
    YELLOW=$(tput bold; tput setaf 3)
	PURPLE=$(tput setaf 1)
    PINK=$(tput bold; tput setaf 5)
	WHITE=$(tput setaf 7)
	BOLD=$(tput bold)
	RESET=$(tput sgr0)
else
	BLACK="\033[01;30m"
	MAGENTA="\033[1;31m"
	ORANGE="\033[1;33m"
	GREEN="\033[0;32m"
    LIGHT_GREEN="\033[1;32m"
    BLUE="\033[0;34m"
    LIGHT_BLUE="\033[1;34m"
    YELLOW="\033[0;33m"
	PURPLE="\033[1;35m"
    PINK="\033[0;35m"
	WHITE="\033[1;37m"
	BOLD=""
	RESET="\033[m"
fi

export BLACK
export MAGENTA
export ORANGE
export GREEN
export LIGHT_GREEN
export BLUE
export LIGHT_BLUE
export YELLOW
export PURPLE
export PINK
export WHITE
export BOLD
export RESET

# Git branch details
function parse_git_dirty() {
	[[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}
function parse_git_branch() {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

# Change this symbol to something sweet. 
# (http://en.wikipedia.org/wiki/Unicode_symbols)
symbol="⚡ "

export PS1='\[\033[0;32m\]\u\[\033[1;32m\]@\[\033[1;34m\]\h\[\033[1;32m\]:\[\033[0;33m\]\W \[\033[0;35m\]\$ \[\033[00m\]'
export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n$symbol\[$RESET\]"
export PS1="\[${GREEN}\]\u\[${LIGHT_GREEN}\]@\[${LIGHT_BLUE}\]\h\[${LIGHT_GREEN}\]:\[${YELLOW}\]\W \[${ORANGE}\]\$ \$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n$symbol\[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"


### Misc

# Only show the current directory's name in the tab 
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# init z! (https://github.com/rupa/z)
. ~/z.sh
