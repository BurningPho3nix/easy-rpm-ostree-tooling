#!/bin/sh

echo THIS SCRIPT WILL REBOOT YOUR PC AFTER THE REBASE

sudo rpm-ostree upgrade
sudo rpm-ostree rebase fedora:fedora/40/x86_64/kinoite
sudo reboot
