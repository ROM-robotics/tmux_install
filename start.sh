#!/bin/bash

###     tmux CONFIGURATION
#sudo apt install -y tmux tmuxinator neofetch
#mv ~/.tmux.conf ~/.tmux.conf.backup
cp ./.tmux.conf ~/.tmux.conf
echo "Backup and copy ~/.tmux.conf "

##      Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f $0)
echo "$SCRIPT"

###     Absolute path this script is in. /home/user/bin
SCRIPTPATH=`dirname $SCRIPT`
echo "$SCRIPTPATH"
cd "$SCRIPTPATH"

###     remove the old link
rm .tmuxinator.yml

###     link the session file to .tmuxinator.yml
ln session.yml .tmuxinator.yml
echo "Creating .tmuxinator.yaml link."

###     start tmuxinator
tmuxinator