# Pull latest bash files from Dropbox and load if present
[[ -r ~/Dropbox/.bash/.bashrc_mbp ]] && cp ~/Dropbox/.bash/.bashrc_mbp ~/.bashrc_mbp
[[ -r ~/Dropbox/.bash/.bash_aliases ]] && cp ~/Dropbox/.bash/.bash_aliases ~/.bash_aliases

[[ -r ~/.bashrc_mbp ]] && . ~/.bashrc_mbp
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -r ~/.bash_system_specific ]] && . ~/.bash_system_specific
