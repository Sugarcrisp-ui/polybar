#!/bin/bash
#set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Checking if I have the latest files from the repository
echo "Checking for newer files online first"
git pull

# Add your Polybar configuration files
git add config.ini launch.sh

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

# Commit to the local repository with a message containing the time details and commit text
git commit -m "$input"

# Push the local files to the repository

if grep -q main .git/config; then
    echo "Using main"
    git push -u origin main
fi

if grep -q master .git/config; then
    echo "Using master"
    git push -u origin master
fi

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
