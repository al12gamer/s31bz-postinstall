#!/bin/bash
# Start menu functions to choose your device
mainmenu () {
	clear
	echo "==================================="
	echo " --- Alex's Post-install Setup Script ---"
	echo "==================================="
	echo "Supported Devices: GPD Win devices, Thinkpads, System76 laptops/Thelio, FrameWork Laptop"
	echo "Script may prompt you or ask you for your password once in a while. Please monitor your computer until the script is done."
	echo "This script will show terminal output. This is normal."
	echo "You can open this script in a text editor to see packages to be installed in detail."
	echo "You are encouraged to modify this script for your own needs."
	echo "Please REBOOT system after script is run."
	echo "Make sure you have a stable and fast Internet connection before proceeding!!!"
	echo "Press Q to quit"
	echo "Enter your selection followed by <return>:"
	echo "1 = GPD Win device"
	echo "2 = Thinkpad"
	echo "3 = System76 laptop or Thelio"
	echo "4 = Framework Laptop"
	sleep 2
	read answer
	case "$answer" in
		1) gpdwin;;
		2) thinkpad;;
		3) system76;;
		4) framework;;
		Q) quitscript;;
	esac
	badoption
}
quitscript () {
	clear
	exit
}
badoption () {
	clear
	echo "Invalid Option!"
	echo "Returning to Main Menu..."
	sleep 3
	mainmenu
}
finish () {
	clear
	echo "Done..."
	echo "------------------"
	echo "PLEASE REBOOT"
	echo "------------------"
	sleep 4
	clear
}
gpdwin () {
	clear
	echo "This option is a work in progress, please await commits"
	sleep 2
	mainmenu
}
thinkpad () {
        clear
	echo "What distro are you running?"
	read answer1
	case "$answer1" in
		1) fedora-tp;;
		Q) quitscript;;
	esac
	badoption
	}
system76 () {
        clear
        echo "This option is a work in progress, please await commits"
        sleep 2
        mainmenu
}
fedora-tp () {
	clear
	echo "Starting installs"
	sleep 2
	bash fedora-tp.sh
	sleep 5
	echo "Returning to menu when installs have completed. Please reboot"
	sleep 2
	finish
	mainmenu
}
# Start of Main Script
while true
do
	mainmenu
done
# End of Main Script
