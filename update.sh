#!/bin/bash

install_file=.install

filelist=(
  .bash_aliases
  .bash_config
  .bash_functions
  .bash_profile
  .bashrc
  .gitignore
  .profile
  .vimrc
)

function preupdate_check() {

  if [[ ! -r ${install_file} ]]; then

    echo "Bashstrap not installed. Try ./init.sh"

    exit 1

  fi

}

function update_bashstrap() {

  echo " - Updating from git:"
  git pull

  source_path=./dotfiles
  install_path=~

  for file in ${filelist[@]}
  do

    if [[ -r ${source_path}/${file} ]]; then

      echo " - Installing ${source_path}/${file} to ${install_path}/${file}"

      cp ${source_path}/${file} ${install_path}/${file}

    fi

  done

}

function update_conditionals() {

  if [[ -x $(which git) ]]; then

    git_version=$(git --version | awk '{print $3}')
    git_major_version=$(awk '{ split($0,a,".");print a[1] }' <<< ${git_version})

    git config --global core.excludesfile "~/.gitignore"
    git config --global core.whitespace "space-before-tab,indent-with-non-tab,trailing-space"

    git config --global color.ui "auto"

    git config --global color.branch.current "yellow reverse"
    git config --global color.branch.local "yellow"
    git config --global color.branch.remote "green"

    git config --global color.diff.meta "yellow bold"
    git config --global color.diff.frag "magenta bold"
    git config --global color.diff.old "red bold"
    git config --global color.diff.new "green bold"

    git config --global color.status.added "yellow"
    git config --global color.status.changed "green"
    git config --global color.status.untracked "cyan"

    if [ "$git_major_version" -ge "2" ]; then
      git config --global push.default "simple"
    fi

  else

    echo "no git available"

  fi

}

preupdate_check

echo "Updating Bashstrap"

update_bashstrap

update_conditionals
