#! /bin/bash

cp -v .tmux.conf ~/


if ! grep 'source.*\.bashrc-ide' ~/.bashrc > /dev/null
then 
  echo "Setting up sourcing .bashrc-ide from .bashrc..."

  echo "" >> ~/.bashrc
  echo "" >> ~/.bashrc
  echo "source ~/.config/nvim/system/.bashrc-ide" >> ~/.bashrc
fi

echo "Re-sourcing files..."

source ~/.bashrc
tmux source ~/.tmux.conf

exit 0
