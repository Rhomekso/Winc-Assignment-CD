#!/bin/bash

if [ ! -d "/home/Winc_CD_repo" ]; then
  git clone https://github.com/Rhomekso/Winc-Assignment-CD.git /home/Winc_CD_repo
  echo "Repository cloned."
else
  if [ -d "/home/Winc_CD_repo/.git" ]; then
    cd /home/Winc_CD_repo
    git fetch
    git pull
    echo "Changes pulled from the repository."
  else
    rm -rf /home/Winc_CD_repo
    git clone https://github.com/Rhomekso/Winc-Assignment-CD.git /home/Winc_CD_repo
    echo "Repository cloned and set up."
  fi
fi
