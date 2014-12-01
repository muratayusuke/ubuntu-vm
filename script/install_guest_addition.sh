#!/bin/bash

apt-get update
apt-get install -y xserver-xorg xserver-xorg-core build-essential linux-headers-generic dkms

mkdir /tmp/isomount
mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/isomount
/tmp/isomount/VBoxLinuxAdditions.run
umount /tmp/isomount
rm -rf /tmp/isomount

