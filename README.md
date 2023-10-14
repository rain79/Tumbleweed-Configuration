# Tumbleweed-Configuration
This script can be used to setup DWM. 

1.) Setup Tumbleweed (or Leap as you wish) with any Desktop environment (as you wish) and configure WIFI.
Once configured, I run this script to setup my preferred version of DWM. 
All the patches that I have applied are in the Patches folder.

The script will prompt you for your SUDO password in order to cache the credentials for about 5 minutes to ensure that the installation does not keep prompting.

Then it will initiate the download of the GIT Tumbleweed DWM, install all the required dependencies to use with DWM

Once all the dependencies are installed, it will compile and setup DWM, DMenu and ST, copy the wallpaper, autorun script to set the wallpaper with feh, and set the .desktop file for either your default (if using xsession) or dwm.desktop to add an entry to your login manager. Once completed, logoff and select your entry (or startx). :)

 
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

My linux Tumbleweed Configuration


Installed OpenSUSE with KDE to setup network manager and basic things.
Once setup, I setup DWM and started to create a script to do the setup
in a more automatic way. It should compile my config for DWM, ST and
DMENU. It will also update the .bashrc in the home folder for the user
as well as create an entry for either the login manager, or for startx
if you setup the login to the graphical interface.

Feel free to reach out if you have questions or concerns.

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
