#!/bin/bash

sudo -v

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

if [ -d "$HOME/Downloads" ]; then
echo "Downloading TeamViewer..."
wget -q -O $HOME/Downloads/teamviewer_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
fi

if [ -f "$HOME/Downloads/teamviewer_amd64.deb" ]; then
echo "Installing TeamViewer..."
sudo apt-get -y install libqt5positioning5 >/dev/null 2>/dev/null
sudo apt-get -y install libqt5printsupport5 >/dev/null 2>/dev/null
sudo apt-get -y install libqt5qml5 >/dev/null 2>/dev/null
sudo apt-get -y install libqt5quick5 >/dev/null 2>/dev/null
sudo apt-get -y install libqt5sensors5 >/dev/null 2>/dev/null
sudo apt-get -y install libqt5webchannel5 >/dev/null 2>/dev/null
sudo apt-get -y install libqt5webkit5 >/dev/null 2>/dev/null
sudo apt-get -y install qml-module-qtgraphicaleffects >/dev/null 2>/dev/null
sudo apt-get -y install qml-module-qtquick-controls >/dev/null 2>/dev/null
sudo apt-get -y install qml-module-qtquick-dialogs >/dev/null 2>/dev/null
sudo apt-get -y install qml-module-qtquick-layouts >/dev/null 2>/dev/null
sudo apt-get -y install qml-module-qtquick-privatewidgets >/dev/null 2>/dev/null
sudo apt-get -y install qml-module-qtquick-window2 >/dev/null 2>/dev/null
sudo apt-get -y install qml-module-qtquick2 >/dev/null 2>/dev/null
sudo apt deb $HOME/Downloads/teamviewer_amd64.deb >/dev/null 2>/dev/null
fi

echo "Cleaning Up..."
rm -f $HOME/Downloads/teamviewer*.deb

echo "Done"

if [ -f "/opt/teamviewer/tv_bin/script/teamviewer" ]; then
/opt/teamviewer/tv_bin/script/teamviewer >/dev/null 2>/dev/null
fi
