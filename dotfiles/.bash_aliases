# ---------------------------------------------------------------------------- #
# General Aliases
# ---------------------------------------------------------------------------- #

alias sudo='sudo '
alias dev="cd ~/Development"
alias s='open -a "Sublime Text"'
alias tree='tree -aldCL 2 --dirsfirst'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."


# ---------------------------------------------------------------------------- #
# OSX Aliases
# ---------------------------------------------------------------------------- #

if [[ $OSTYPE == darwin* ]]; then

  alias ls="command ls -lahFG"

  alias clip="perl -i -pe 'chomp if eof' | pbcopy"

  alias j8=JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
  alias j7=JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
  alias j6=JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

fi


# ---------------------------------------------------------------------------- #
# Linux Aliases
# ---------------------------------------------------------------------------- #

if [[ $OSTYPE == "linux-gnu" ]]; then

  alias ls='command ls -lahF --color=auto'

fi


# ---------------------------------------------------------------------------- #
# App-specific Aliases
# ---------------------------------------------------------------------------- #

if [ -x "$(which pygmentize)" ]; then

    alias ccat='pygmentize -O style=monokai -f console256 -g'

fi

if [ -x "$(which git)" ]; then

    alias gs='git status'
    alias ga='git add .'
    alias gc='git commit -m' # requires you to type a commit message
    alias gp='git push'
    alias gfo='git fetch origin'
    alias gbn='git rev-parse --abbrev-ref HEAD'

fi



alias myip='curl cyniq.com/ip -s -w "\n"'
alias copymyip='myip | clip && echo "Current IP address `myip` copied to clipboard"'

alias marx='sudo mkdir -p /Volumes/arx && sudo chown stanta01 /Volumes/arx && sshfs arx:/data/sites /Volumes/arx'
alias umarx='umount /Volumes/arx'
