#!/bin/bash

################# INSTALAÇÃO ####################
apt install wget -y
clear
sleep 2
echo "OK"
wget -O code_latest_arm64.deb https://update.code.visualstudio.com/latest/linux-deb-arm64/stable
apt install ./code_latest_arm64.deb
if [ "$?" -gt 0 ]; then
 echo "ocorreu algum erro!"
 exit
fi
sudo apt-get install -f

sed -i "s/ %F/ --no-sandbox/g" /usr/share/applications/code.desktop
if [ "$?" -gt 0 ]; then
 echo "ocorreu algum erro!"
 exit
else
 clear
 echo "espere um momento"
 sleep 2
fi
sed -i "s/--new-window %F/--no-sandbox/g" /usr/share/applications/code.desktop
if [ "$?" -gt 0 ]; then
 echo "ocorreu algum erro!"
 exit
else
 clear
 echo "espere mais um pouco"
 sleep 3
fi
clear
echo "[+] VISUAL STUDIO CODE [+]"
echo ""
echo " PESQUISE/VEJA NA LISTA DE APLICATIVOS!"
########################################################

# É Como Um Sonho que Talvez eu nem tenha a Capacidadede conquistar!
