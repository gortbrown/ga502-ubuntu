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
apt install rog-core
echo 'Done! Please reboot!'
