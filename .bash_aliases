### Aliases

# Open specified files in Sublime Text
# "s ." will open the current directory in Sublime
alias s='open -a "Sublime Text"'

#alias atom="http_proxy=http://www-cache.reith.bbc.co.uk:80 https_proxy=http://www-cache.reith.bbc.co.uk open -a atom"

alias ij='open -a "IntelliJ IDEA 12.app"'

# Colour LS
alias ls="command ls -lahFG"

# Colour Tree
# You must install tree first - "brew install tree"
alias tree='tree -aldCL 2 --dirsfirst'

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

# Shortcut to my Development folder in my home directory
alias dev="cd ~/Development"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Colored up cat!
# You must install Pygments first - "sudo easy_install Pygments"
#alias cat='pygmentize -O style=monokai -f console256 -g'

# Git
# You must install Git first - ""
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'
alias gbn='git rev-parse --abbrev-ref HEAD'

# strip newline and pipe into clipboard using pbcopy
alias clip="perl -i -pe 'chomp if eof' | pbcopy"

alias j8=JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
alias j7=JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
alias j6=JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

alias myip='curl cyniq.com/ip -s -w "\n"'
alias copymyip='myip | clip && echo "Current IP address `myip` copied to clipboard"'

alias marx='sshfs arx:/ /mnt/arx'
alias umarx='umount /mnt/arx'