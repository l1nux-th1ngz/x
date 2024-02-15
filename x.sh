#!/bin/bash

sudo -Sy
echo update 1
wait

sudo -Syu
echo update 2
wait

# DE
sudo pacman -S --needed xfce4 mousepad parole ristretto thunar-archive-plugin thunar-media-tags-plugin xfce4-battery-plugin 
xfce4-datetime-plugin xfce4-mount-plugin xfce4-netload-plugin xfce4-notifyd xfce4-pulseaudio-plugin xfce4-screensaver xfce4-taskmanager
xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-xkb-plugin file-roller network-manager-applet  
epdfview capitaine-cursors arc-gtk-theme xdg-user-dirs xdg-user-dirs-gtk

# UP DIRS
xdg-user-dirs-update

# Packages
aalib
alacritty
aria2
ascii
archiso
archinstall
arch-install-scripts
autoconf
autoconf-archive
automake
base-devel
bash-completion
bat-extras
blueman
bluez
bluez-utils
brightnessctl
btop
bzip2
cairo 
cava
clang
cliphist
cmake 
compiler-rt 
cpio 
dunst
efitools
electron
exo
ffmpeg
figlet
filemanager-actions
fish
font-manager
fuseiso
fuse2
fuse3
fusezip
gcc
gcc 
gdb 
geany
geany-plugins
git
curl
wget
git-grab
git-lfs
glib2
glibc
go
grim
gtk2
gtk3
gtk4
gtk-layer-shell
gufw
gum
gvfs
htop
i2pd 
imagemagick 
imv
intel-ucode
jo
jp2a 
jq
kitty
kvantum
layer-shell-qt
lib32-libva
libva 
libdisplay-info 
libinput 
libliftoff 
libnotify
libreoffice-fresh 
libx11 
libxcb 
libxcomposite 
libxfixes 
libxkbcommon
lib32-libdecor
libdecor 
libxrender 
lolcat
lsd
lua
lz4 
mako
meson 
mkinitcpio 
mpv
multilib-devel
nano
ncmpcpp 
neofetch
ninja 
nodejs
notepadqq
noise-suppression-for-voice
npm
p7zip
pacman-contrib
pango 
pavucontrol
pearl
picom
pixman 
pkgconf
playerctl
plymouth
polkit-kde-agent
python
python-click
python-halo
python-pyaml
python-pyperclip
python-pywal
python-rich
python-termcolor
qt5-base
qt6-base
ranger
starship
rofi
sddm
seatd 
spotify-launcher
sudo
terminator 
thefuck
thunar
thunar-archive-plugin
tk
tmux 
toilet
tomlplusplus
ttf-fira-code
ufw
unzip
udisks2
udiskie
vhs
viewnior 
vivid
vlc
vte3
vte4
woff-fira-code
ttf-nerd-fonts-symbols-mono
woff2-cascadia-code
xcb-proto 
xcb-util 
xcb-util-keysyms 
xcb-util-wm 

xfce4-genmon-plugin
xorg-xinput 
xorg-xwayland 
yad
zenity 
xdg-desktop-portal-xapp
lrzip 
lzip 
lzop 
ncmpcpp 
zip
zlib
zram-generator
zsh
enchant 
mythes-en 
ttf-liberation 
hunspell-en_US 
ttf-bitstream-vera 
pkgstats 
adobe-source-sans-pro-fonts 
gst-plugins-good 
ttf-droid ttf-dejavu 
aspell-en 
icedtea-web 
gst-libav 
ttf-ubuntu-font-family 
ttf-anonymous-pro 
jre8-openjdk 
languagetool 
libmythes 
mkinitcpio 
mkinitcpio-archiso
mkinitcpio-systemd-tool
btop
htop

### Copy Config Files ###
read -n1 -rep 'Would you like to copy config files? (y,n)' CFG
if [[ $CFG == "Y" || $CFG == "y" ]]; then
    echo -e "Copying config files...\n"
    cp -R ncmpcpp ~/.config/
    cp -R kitty ~/.config/
    cp -R dunst ~/.config/
    cp -R alacritty ~/.config/
    cp -R rofi ~/.config/
    cp -R terminator ~/.config/
    cp -R pywal ~/.config/
	cp -R htop ~/.config/
    cp -R btop ~/.config/
    cp -R picom ~/.config/
    cp -R pywal ~/.config/
    cp -R geany ~/.config/
    cp -R notepadqq ~/.config/
    cp -R mpv ~/.config/
    cp -R vlc ~/.config/
    cp -R lsd ~/.config/
    cp -R vivid ~/.config/
    cp -R mpd ~/.config/
	
	#### Check for package manager ####
ISYAY=/sbin/yay
if [ -f "$ISYAY" ]; then 
    echo -e "$COK - yay was located, moving on."
else 
    echo -e "$CWR - Yay was NOT located.. .... ........"
    read -rep $'[\e[1;33mACTION\e[0m] - Would you like to install yay (Y,n) ' INSTYAY
    if [[ $INSTYAY == "Y" || $INSTYAY == "y" ]]; then
        git clone https://aur.archlinux.org/yay.git &>> $INSTLOG
        cd yay
        makepkg -si --noconfirm &>> ../$INSTLOG
        cd ..
    else
        echo -e "$CER - Yay installed suscces"
        exit
    fi
    # update the yay database
    echo -e "$CNT - Updating the yay database..."
    yay -Suy --noconfirm &>> $INSTLOG
fi


### Enable SDDM Autologin ###

    sudo systemctl enable sddm
    sleep 3
fi

# Enable BLUETOOTH
    sudo systemctl enable --now bluetooth.service
    sleep 2
    fi
	
	# Done Reboot
	
	reboot
