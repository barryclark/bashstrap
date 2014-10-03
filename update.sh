#!/bin/bash

install_file=.install

filelist=(
  .bash_aliases
  .bash_config
  .bash_functions
  .bash_profile
  .bashrc
  .gitconfig
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

preupdate_check

echo "Updating Bashstrap"

update_bashstrap
