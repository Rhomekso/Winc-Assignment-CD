#!/bin/bash

# Check if the /home/Winc_CD_repo directory does not exist
if [ ! -d "/home/Winc_CD_repo" ]; then
  # Clone the repository if the directory does not exist
  git clone https://github.com/Rhomekso/Winc-Assignment-CD.git /home/Winc_CD_repo
  echo "Repository cloned."
else
  # Check if the /home/Winc_CD_repo directory exists and is a git repository
  if [ -d "/home/Winc_CD_repo/.git" ]; then
    # Navigate to the repository directory
    cd /home/Winc_CD_repo
    # Fetch the latest changes from the remote repository
    git fetch
    # Pull the latest changes into the local repository
    git pull
    echo "Changes pulled from the repository."
  else
    # Remove the directory if it exists but is not a git repository
    rm -rf /home/Winc_CD_repo
    # Clone the repository again to ensure it is set up correctly
    git clone https://github.com/Rhomekso/Winc-Assignment-CD.git /home/Winc_CD_repo
    echo "Repository cloned and set up."
  fi
fi
