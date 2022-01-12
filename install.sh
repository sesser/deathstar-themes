#!/usr/bin/env bash

sudo cp -r plymouth /usr/share/plymouth/themes/deathstar
sudo update-alternatives --install \
    /usr/share/plymouth/themes/default.plymouth \
    default.plymouth \
    /usr/share/plymouth/themes/deathstar/deathstar.plymouth 100

sudo update-alternatives --config default.plymouth

sudo mv /etc/gdm3/greeter.dconf-defaults /etc/gdm3/greeter.dconf-defaults.backup
sudo cp gdm3/greeter.dconf-defaults /etc/gdm3/

exec grub/install.sh

