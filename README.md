## Set up after fresh install debian netins (base system only)
> **chroot via any liveboot distro installer**
```bash
# mount -t ext4 /dev/sd*? /mnt
# mount -t proc /proc /mnt/proc
# mount -t sysfs /sys /mnt/sys
# mount -o bind /dev /mnt/dev
# chroot /mnt
```
> **Set up**
```bash
# echo "deb http://deb.debian.org/debian/ bullseye-backports main contrib non-free" >> /etc/apt/sources.list
```
```bash
# apt update && apt install sudo xorg dialog network-manager git
```
```bash
# usermod -aG sudo $iduser (change $iduser with your id as user)
```
```bash
# umount /mnt/dev/{proc,sys,dev}
```
```bash
# exit
```
```bash
# umount /mnt
```
Reboot system and login as user.

> **Create xdg user directories**
```bash
$ sudo apt install xdg-user-dirs
```
```bash
$ xdg-user-dirs-update
```
> **Aktivate wifi**
```bash
$ sudo systemctl start NetworkManager
```
```bash
$ sudo systemctl enable NetworkManager
```
To connect wifi, use `nmtui`

## Setup bspwm-desktop
> **Required**
```bash
$ sudo apt install bspwm sxhkd xdotool feh rsync python psmisc alsa-utils pulseaudio pavucontrol brightnessctl python3-psutil dunst libnotify-bin libglib2.0-bin gsimplecal rofi lxappearance qt5ct qt5-style-plugins lxpolkit rxvt-unicode xclip scrot jq thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman ffmpegthumbnailer tumbler w3m w3m-img geany viewnior neofetch htop imagemagick ffmpeg xsettingsd xfce4-power-manager
```
> **Installing**
```bash
$ git clone https://github.com/mojoid/debian-bspwm && cd debian-bspwm
```
```bash
$ cp -r . $HOME
```
```bash
$ cd $HOME/.icons && tar -Jxvf icons.tar.xz
```
```bash
$ cd $HOME/.themes && tar -Jxvf themes.tar.xz
```
> **Polybar**
```bash
$ sudo apt install -t bullseye-backports polybar
```
> **Picom**
```bash
sudo apt install build-essential libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libpcre3-dev libx11-xcb-dev ninja-build meson
```
```bash
git clone https://github.com/yshui/picom.git && cd picom/
```
```bash
git submodule update --init --recursive
```
```bash
meson --buildtype=release . build
```
```bash
ninja -C build
```
```bash
ninja -C build install
```
