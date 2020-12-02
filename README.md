# ga502-ubuntu
Scripts to help make Linux work well on the Asus ROG Zephyrus GA502DU Gaming Laptop

This set of scripts will help you get Ubuntu Linux (or any Ubuntu based Distro) working on the Asus ROG Zephyrus GA502DU laptop. After a normal installation of Linux, some things like WiFi won't work. This script will set things up so most things will work.

The only things that still don't work are the keyboard backlight (sometimes it will turn on, but most of the time it doesn't), most of the function keys (mute is the only one that doesn't), and all of the ROG specific functions, like the ROG button, fan control, etc. (which is to be expected). The display will also flicker every once in a while. If this happens, just suspend the system, and it will stop when you wake it again.


Before you begin:

-Install your Linux Distro. This has only been tested with Ubuntu based Distros, so I can't guarantee it will work perfectly with other Debian based distros, and it won't work with Arch based or Red Hat based distros. I will try to test this further, and make versions for those other distros.

-Plug in to Ethernet, as WiFi won't work.

-If you are looking into buying this laptop, and want to run Linux on it, maybe look elsewhere if you don't want to go through this setup process or need those missing features. This makes things work, but it isn't totally perfect. However, if you still want to buy this laptop and install Linux on it, it should be fine if you don't mind going through this setup and having a couple of things not work.


Steps:

1. Download the repository with 'git clone' in the terminal, or by downloading the zip file and extracting it.

2. Go to the directory where the files are, and open it in the terminal by either right clicking in your file manager and clicking "Open in terminal" or by typing 'cd /type/the/directory/here'

3. Once the directory opens in the terminal, type 'sudo su' and type in your password to enter root mode. YOU MUST RUN THESE SCRIPTS AS ROOT.

4. Now, run setup1.sh by typing './setup1.sh'. 

5. Whenever you're asked to choose Yes or No, type Y to install the programs. If asked to choose between "gdm" and something else like "lightdm" or "sdm", choose "gdm". This will allow things to start properly on startup. You may also be prompted to set up secure boot. If you are, choose ok, and enter in a password between 8 and 16 characters long. Remember this password, because when you reboot, it will ask you to register the MOK. When you see this, choose to enrol MOK, choose Continue and type in the password when prompted. When asked to press Enter or Ctrl + C, press Enter to add the repository needed to install Nvidia Graphics drivers.

6. When this is done, run the nvidia-setup.sh script to install nvidia drivers. If you downloaded/installed a version of your distro that already had the proprietary nvidia drivers included, like Pop OS or Zorin OS, you can skip this.

7. Run setup2.sh the same way you ran setup1.sh

8. Once the script is done, reboot into your new system!
