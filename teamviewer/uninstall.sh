#!/bin/bash

echo "Removing TeamViewer..."
sudo apt-get -y purge teamviewer >/dev/null 2>/dev/null
sudo apt-get -y purge teamviewer-host >/dev/null 2>/dev/null
sudo apt-get -y autoremove >/dev/null 2>/dev/null
rm -rf $HOME/.cache/teamviewer
rm -rf $HOME/.cache/TeamViewer
rm -rf $HOME/.config/teamviewer
rm -rf $HOME/.config/TeamViewer
rm -rf $HOME/.local/share/teamviewer*
rm -rf $HOME/.local/share/TeamViewer*
rm -f  $HOME/Downloads/teamviewer*.deb

echo "Done"
