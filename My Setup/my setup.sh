#!/bin/sh

sudo dnf config-manager --setopt="defaultyes=True" --setopt="max_parallel_downloads=10" --save
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-39.noarch.rpm
sudo dnf install -y https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-39.noarch.rpm
sudo dnf install -y rpmfusion-free-release-tainted
sudo dnf install -y rpmfusion-nonfree-release-tainted
sudo dnf groupupdate -y core
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf install -y snapd
sudo ln -s /var/lib/snapd/snap /snap
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate -y sound-and-video
sudo dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap -y mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686
sudo dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
sudo dnf swap -y mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686
sudo dnf install -y steam
sudo dnf install -y kdenlive krita
sudo dnf install -y neofetch
sudo dnf install -y rpmdevtools rpmlint
sudo dnf install -y 0ad
sudo dnf copr enable burningpho3nix/Setup-Tool -y
sudo dnf install setup-tool setup-tool-beta setup-tool-lts -y
sudo dnf install -y chromium
sudo dnf install -y cool-retro-term
sudo dnf install -y corectrl
sudo dnf install -y cpu-x
sudo dnf install -y gnome-disk-utility
sudo dnf install -y elisa-player
sudo dnf install -y goverlay
sudo dnf install -y gparted
sudo dnf swap -y kwrite kate
sudo dnf install -y mangohud
sudo dnf install -y piper
sudo dnf install -y tlp
sudo dnf install -y virt-manager
sudo dnf install -y wine
sudo dnf install -y winetricks
sudo dnf install -y wireshark
sudo dnf install -y xwaylandvideobridge
sudo dnf install -y neofetch
sudo dnf install -y htop
sudo dnf install -y gh
sudo dnf remove -y libreoffice*

flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub net.davidotek.pupgui2 -y
flatpak install flathub net.lutris.Lutris -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub io.github.prateekmedia.appimagepool -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub de.haeckerfelix.AudioSharing -y
flatpak install flathub org.blender.Blender -y
flatpak install flathub de.bforartists.Bforartists -y
flatpak install flathub com.feaneron.Boatswain -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.gnome.Boxes -y
flatpak install flathub org.gnome.clocks -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub de.shorsh.discord-screenaudio -y
flatpak install flathub app.drey.EarTag -y
flatpak install flathub im.riot.Riot -y
flatpak install flathub de.philippun1.turtle -y
flatpak install flathub org.gnome.design.Emblem -y
flatpak install flathub org.gnome.Firmware -y
flatpak install flathub io.github.giantpinkrobots.flatsweep -y
flatpak install flathub org.gnome.NetworkDisplays -y
flatpak install flathub org.godotengine.Godot -y
flatpak install flathub com.google.Chrome -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub org.kde.krita -y
flatpak install flathub io.gitlab.gregorni.Letterpress -y
flatpak install flathub org.gnome.design.Lorem -y
flatpak install flathub io.missioncenter.MissionCenter -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub org.prismlauncher.PrismLauncher -y
flatpak install flathub com.github.Matoking.protontricks -y
flatpak install flathub org.rncbc.qpwgraph -y
flatpak install flathub org.sauerbraten.Sauerbraten -y
flatpak install flathub gg.tesseract.Tesseract -y
flatpak install flathub org.signal.Signal -y
flatpak install flathub org.nickvision.tagger -y
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y
flatpak install flathub com.teamspeak.TeamSpeak -y
flatpak install flathub org.jitsi.jitsi-meet -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub com.mastermindzh.tidal-hifi -y
flatpak install flathub com.vscodium.codium -y
flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y
flatpak install flathub org.kde.ktorrent -y
flatpak install flathub pm.mirko.Atoms -y

sudo snap install powershell --classic

sudo cp ./90-override.conf /etc/sysctl.d/
sudo mv ./Setup-Tool-Fedora/ /home/burningpho3nix/Documents/
sudo mv ./rpmbuild/ /home/burningpho3nix/

sudo dnf update --refresh -y && flatpak update -y && snap refresh
sudo reboot
