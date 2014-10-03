# Pull latest bash files from Drive and load if present
[[ -r ~/Drive/.bash/.bash_config ]] && cp ~/Drive/.bash/.bash_config ~/.bash_config
[[ -r ~/Drive/.bash/.bash_aliases ]] && cp ~/Drive/.bash/.bash_aliases ~/.bash_aliases
[[ -r ~/Drive/.bash/.bash_functions ]] && cp ~/Drive/.bash/.bash_functions ~/.bash_functions

[[ -r ~/.bash_config ]] && . ~/.bash_config
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -r ~/.bash_functions ]] && . ~/.bash_functions

# System specific changes go here:
[[ -r ~/.bashrc_local ]] && . ~/.bashrc_local
