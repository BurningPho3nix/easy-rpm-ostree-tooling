#!/bin/bash

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install com.valvesoftware.Steam -y
flatpak install com.usebottles.bottles -y
flatpak install net.davidotek.pupgui2 -y
flatpak install net.lutris.Lutris -y
flatpak install com.discordapp.Discord -y
flatpak install io.github.mimbrero.WhatsAppDesktop -y
flatpak install ./xwaylandvideobridge.flatpak -y
