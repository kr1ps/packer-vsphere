#!/usr/bin/bash

echo '> Cleaning apt-get ...'
apt-get clean
# Cleans the machine-id.
echo '> Cleaning the machine-id ...'
rm /etc/machine-id
touch /etc/machine-id
# Start iscsi and ntp
echo '> Start iscsi and ntp ...'
systemctl restart iscsid
systemctl restart ntp
# Cleanup for linux customization in Terraform
mkdir /etc/dhcp3
# Fix VMware Customization Issues KB56409
sed -i '/^\[Unit\]/a After=dbus.service' /lib/systemd/system/open-vm-tools.service
awk 'NR==11 {$0="#D /tmp 1777 root root -"} 1' /usr/lib/tmpfiles.d/tmp.conf | tee /usr/lib/tmpfiles.d/tmp.conf
# Disable Cloud Init
touch /etc/cloud/cloud-init.disabled
# Install docker
apt update -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update -y
apt-cache policy docker-ce
apt install docker-ce -y
groupadd docker
usermod -aG docker ubuntu

echo '> Packer Template Build -- Complete'