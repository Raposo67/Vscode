#!/bin/bash
apt install ./code_1.85.1-1702461056_arm64.deb
apt update
clear
rm -rf /usr/share/applications/code.desktop
mv code.desktop /usr/share/applications/
echo "..."
sleep 2
echo "procure na sua lista de aplicativos o Vscode"
sleep 2
clear
