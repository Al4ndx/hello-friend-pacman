#!/bin/bash
sudo pacman -S figlet
figlet hello  friend

echo "|------------------------------|"
echo "|     by: Cyclus secuirity     |"
echo "|          ahutor: Alan Perez  |"
echo "|------------------------------|"

sudo pacman -S nmap
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install crackmapexec



echo "la ip:"
read ip


# Direcci  n IP a escanear

# Opciones de Nmap
opciones="-Pn"
versiones="-sC -sV"
# Escanear la direcci  n IP con Nmap
nmap $opciones $ip

echo "puertos:"
read puertos

nmap $versiones $puertos $ip








