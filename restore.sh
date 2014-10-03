#!/bin/bash

function restore_existing() {

  install_file=.install

  if [[ ! -r ${install_file} ]]; then

    echo "Bashstrap not installed."

  else

    echo "Restoring pre-Bashstrap settings"

    restore_path=~
    backup_path=./.backup

    while read file; do

      echo " - Restoring ${backup_path}/${file} to ${restore_path}/${file}"

      #cp ${backup_path}/${file} ${restore_path}/${file}

    done < ${install_file}

    rm -rf .backup .install

  fi

}

restore_existing
