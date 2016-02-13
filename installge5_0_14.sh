cd /home/vagrant
wget http://download.virtualbox.org/virtualbox/5.0.14/VBoxGuestAdditions_5.0.14.iso
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install dkms
sudo mkdir /media/iso
sudo mount -o loop VBoxGuestAdditions_5.0.14.iso /media/iso
cd /media/iso
sudo sh ./VBoxLinuxAdditions.run
#sudo umount /media/iso
