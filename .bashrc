# Pull latest bash files from Drive and load if present
[[ -r ~/Drive/.bash/.bashrc_mbp ]] && cp ~/Drive/.bash/.bashrc_mbp ~/.bashrc_mbp
[[ -r ~/Drive/.bash/.bash_aliases ]] && cp ~/Drive/.bash/.bash_aliases ~/.bash_aliases

[[ -r ~/.bashrc_mbp ]] && . ~/.bashrc_mbp
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases

# System specific changes go here:
[[ -r ~/.bashrc_local ]] && . ~/.bashrc_local
