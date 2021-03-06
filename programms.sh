#!/bin/sh

#xrandr --output DP-0 --mode 1920x1080 --pos 0x0 --output DP-2 --primary --mode 1920x1080 --pos 1920x0 --output DP-4 --mode 1920x1080 --pos 3840x0

# Updating system
paru -Syu --noconfirm

paru -S etcher-bin gimp discord bitwarden spotify github-desktop nvidia-settings --noconfirm

# Installing KVM
paru -S qemu libvirt virt-manager lxsession dnsmasq --noconfirm     #ebtables
sudo systemctl enable libvirtd
sudo usermod -G libvirt -a $USER
echo 'sudo virsh net-start default' | sudo tee -a /opt/kvm-network.sh
sudo chmod +x /opt/kvm-network.sh

# steam


# Wake on lan
#paru -S wol-systemd --noconfirm
#sudo systemctl enable wol@enp39s0
#sudo systemctl start wol@enp39s0

# ssh
#paru -S openssh --noconfirm
#sudo systemctl enable sshd.service
#sudo systemctl start sshd.service

rm programms.sh

reboot
