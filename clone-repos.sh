#!/bin/bash

set -e  # Exit on error

mkdir -p services
cd services


# Function to clone or pull a Git repo
clone_or_pull() {
  local repo_url=$1
  local dir_name=$2

  if [ -d "$dir_name" ]; then
    echo "Pulling latest changes for $dir_name..."
    git -C "$dir_name" pull
  else
    echo "Cloning $dir_name from $repo_url..."
    git clone "$repo_url" "$dir_name"
  fi
}

# Replace these with your actual repo URLs
clone_or_pull https://github.com/Beysik/Beysik-Common.git Beysik-Common
clone_or_pull https://github.com/Beysik/Beysik-YARP.git Beysik-YARP
clone_or_pull https://github.com/Beysik/Beysik-UI.git Beysik-UI
clone_or_pull https://github.com/your-org/Beysik-CartService.git Beysik-CartService
clone_or_pull https://github.com/your-org/Beysik-PCService.git Beysik-PCService
clone_or_pull https://github.com/your-org/Beysik-OrderService.git Beysik-OrderService
