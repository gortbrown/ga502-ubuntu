mv 10-amdgpu.conf /usr/share/X11/xorg.conf.d/
mv 10-nvidia.conf /usr/share/X11/xorg.conf.d/
cp optimus.desktop /etc/xdg/autostart/
mv optimus.desktop /usr/share/gdm/greeter/autostart/
mv xorg.conf /usr/share/X11/
echo 'Done! Please reboot!'
