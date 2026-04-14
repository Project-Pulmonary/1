#!/bin/bash

# Source repo
SOURCE="https://github.com/noranaveen/projectpulmonary.git"

# Destination repo (change this)
DEST="https://github.com/YOUR-USERNAME/YOUR-NEW-REPO.git"

# Clone if not exists
if [ ! -d "projectpulmonary.git" ]; then
    git clone --mirror $SOURCE
fi

cd projectpulmonary.git

# Fetch latest changes
git fetch -p origin

# Push everything to destination
git push --mirror $DEST

echo "Mirror updated successfully!"