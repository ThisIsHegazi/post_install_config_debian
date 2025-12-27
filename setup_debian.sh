#!/usr/bin/bash
# switch to root
su
# add your user to sudo group
sudo usermod -a -G sudo <USER>
reboot


# set bash to case-insensitive
nano ~/.bashrc
# add the following line to .bashrc
bind 'set completion-ignore-case on'
# create ~/.bash_aliases file
nano ~/.bash_aliases
# add following aliases to file
alias poweroff="systemctl poweroff"
alias reboot="systemctl reboot"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade -y"


# add contrib and non-free to debian sources
sudo nano /etc/apt/sources.list
# update sources
sudo apt update
# modernize sources
sudo apt modernize-sources



# install important packages
sudo apt install git curl gcc g++ build-essential linux-headers-$(uname -r)


# configure console fonts and choose Dejavu 59
sudo dpkg-reconfigure console-setup

# set grub font
sudo grub-mkfont -s 55 -o /boot/grub/fonts/myFont.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf
# edit grub file and add GRUB_FONT=/boot/grub/fonts/myFont.pf2
sudo nano /etc/default/grub
# update grub
sudo update-grub

# reboot for installed packages and see changes in grub and console
reboot



# install nvidia-driver
sudo apt install nvidia-driver
reboot
# check for nvidia-smi after reboot


# remap capsLock
sudo nano /usr/share/X11/xkb/symbols/pc
# replace Caps_Lock with BackSpace,BackSpace
# replace Menu with Caps_Lock

# reboot or logout and login again
reboot
