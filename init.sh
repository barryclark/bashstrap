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

function preinstall_check() {

  if [[ -r ${install_file} ]]; then

    echo "Bashstrap already installed. Try ./update.sh"

    exit 1

  fi

}

function backup_existing() {

  original_path=~
  backup_path=./.backup

  mkdir -p ${backup_path}

  touch .install

  for file in ${filelist[@]}
  do

    if [[ -r ${original_path}/${file} ]]; then

      echo " - Backing up ${original_path}/${file} to ${backup_path}/${file}"

      cp ${original_path}/${file} ${backup_path}/${file}

      echo ${file} >> .install

    fi

  done

}

function install_bashstrap() {

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

function install_conditionals() {


}

preinstall_check

echo "Initialising Bashstrap"

backup_existing

install_bashstrap

install_conditionals
