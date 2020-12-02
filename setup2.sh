if test -f "/usr/share/X11/xorg.conf.d/10-amdgpu.conf"; then
    mv 10-amdgpu.conf /usr/share/X11/xorg.conf.d/
    if test -f "/usr/share/X11/xorg.conf.d/10-nvidia.conf"; then
        cp 10-nvidia.conf /usr/share/X11/xorg.conf.d/
        cp optimus.desktop /etc/xdg/autostart/
        cp optimus.desktop /usr/share/gdm/greeter/autostart/
        cp xorg.conf /usr/share/X11/
    fi
    echo Files configured. Moving on...
else
    echo Certain files could not be configured. This is to avoid wrecking the system. Moving on...
fi
add-apt-repository ppa:lukedjones/rog-core
apt update
git clone https://gitlab.com/asus-linux/hid-asus-rog.git
cd hid-asus-rog
make dkms
make onboot
cd -
rm -rf hid-asus-rog
git clone https://gitlab.com/asus-linux/asus-nb-ctrl.git
cd asus-nb-ctrl
make
make install
cd -
rm -rf asus-nb-ctrl
echo 'Done! Please reboot!'
