#!/bin/sh

#First, get the current home directory
workingdir=$HOME

#Prompt for SUDO credentials
sudo -v

#First clone the git directory for DWM, DMenu and the ST Terminal
#git clone rain79/openSUSE-dwm

#Then install requied dependencies
sudo zypper -n install feh libXft-devel libX11-devel libXinerama-devel neofetch picom

#Change to the home directory (our working dir)
cd $workingdir

#Clone the repository with my patched dwm, ST and dmenu
cd openSUSE-dwm

#install dwm, st, and dmenu
for app in dwm st dmenu; do
    cd "$app"
    sudo make clean install
    cd ..
done

#return to workingdir
cd $workingdir

#Copy the .bashrc file into home directory
cp /Tumbleweed-Configuration/static/.bashrc $workingdir/

#Create Wallpaper folder in Pictures and copy  desktop wallpaper
mkdir Pictures/Wallpaper
cp Tumbleweed-Configuration/static/opensuse-skulls.png Pictures/Wallpaper/ 

# Move DWM session file in XDG directory
read -n1 -p "Are you using a login manager? [y|n]" choice
case $choice in
	y|Y) cp Tumbleweed-Configuration/static/dwm-desktop /usr/share/xsessions/
	echo "The dwm menu entry has been added to the Login Manager. Logoff and change the session to DWM to log back in.."
	;;

	n|N) cp Tumbleweed-Configuration/static/dwm-desktop /usr/share/xsession/default.desktop
	echo "DWM should now be the default when you use startx"
	;;

	*) echo "Invalid Entry. Please run the script again and select the appropriate entry";;
esac

mkdir .dwm
cp Tumbleweed-Configuration/static/autostart.sh .dwm

echo "Install now complete. You can now logout and change your DE/WM."
