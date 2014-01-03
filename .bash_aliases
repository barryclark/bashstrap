### Aliases

# Open specified files in Sublime Text
# "s ." will open the current directory in Sublime
alias s='open -a "Sublime Text"'

# Colour LS
alias ls="command ls -lahFG"

# Colour Tree
# You must install tree first - "brew install tree"
alias tree='tree -aldCL 2 --dirsfirst'

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
alias cat='pygmentize -O style=monokai -f console256 -g'

# Git 
# You must install Git first - ""
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'
