apt update
apt-get install --reinstall git dkms build-essential gdm3 linux-headers-$(uname -r)
git clone https://github.com/tomaspinho/rtl8821ce
cd rtl8821ce
chmod +x dkms-install.sh
chmod +x dkms-remove.sh
./dkms-install.sh
cd -
mv grub /etc/default/grub
add-apt-repository ppa:graphics-drivers/ppa
apt install nvidia-driver-440
echo "" 
echo "Now reboot, and run setup2.sh AS ROOT"
