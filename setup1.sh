apt update
apt-get install --reinstall git dkms build-essential gdm3 linux-headers-$(uname -r)
apt install rtl8821ce-dkms
if test -f "/etc/default/grub"; then
    mv grub /etc/default/grub
fi
echo "" 
echo "Now reboot, and run setup2.sh AS ROOT"
echo "If you aren't running Pop OS with Nvidia drivers included, run 'nvidia-setup.sh' first."
