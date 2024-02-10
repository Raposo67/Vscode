#!/bin/bash
apt install wget 


wget "https://vscode.download.prss.microsoft.com/dbazure/download/stable/31c37ee8f63491495ac49e43b8544550fbae4533/code_1.86.1-1707296902_arm64.deb"
apt install ./code_1.86.1-1707296902_arm64.deb
if [ "$?" == 0 ]; then
 echo "instalacao concluida"
else
 echo "ocorreu algum erro"
fi
echo "Corrigindo icompatibilidades"
sed -i "s/--unity-launch %F/--no-sandbox/g" /usr/share/applications/code.desktop
sed -i "s/--new-window %F/--no-sandbox/g" /usr/share/applications/code.desktop
if [ "$?" == 0 ]; then
 echo "concluido"
 echo ""
 echo "Vscode Instalado com Sucesso!!!"
else
 echo "ocorreu algum erro"
 apt install sed
 sed -i "s/--new-window %F/--no-sandbox/g" /usr/share/applications/code.desktop
 sed -i "s/--unity-launch %F/--no-sandbox/g" /usr/share/applications/code.desktop
 echo "Vscode instalado com sucesso!!!"
fi

