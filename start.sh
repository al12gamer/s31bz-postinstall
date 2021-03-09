#!/bin/bash
# End of Menu Functions/Script Functions
mainmenu () {
	clear
	tput setaf 3
	echo "=========================================="
	echo " --- Alex's Post-Install Setup Script ---"
	echo "=========================================="
	tput setaf 10
	echo "Supported Devices: GPD Win devices, Thinkpads, System76 laptops/Thelio, FrameWork Laptop"
	echo "Supported Distros: Pop!_OS, Fedora, Arch-based distros"
	tput setaf 9
	echo "Script may prompt you or ask you for your password once in a while. Please monitor your computer until the script is done."
	echo "This script will show terminal output. This is normal."
	tput setaf 10
	echo "You can open this script in a text editor to see packages to be installed in detail."
	echo "You are encouraged to modify this script for your own needs."
	tput setaf 9
	echo "Please REBOOT system after script is run."
	echo "Make sure you have a stable and fast Internet connection before proceeding!!!"
	echo "Press Q to quit"
	tput sgr0
	echo "Enter your selection followed by <return>:"
	tput setaf 3
	echo "1 = GPD Win device"
	echo "2 = Thinkpad"
	echo "3 = System76 laptop or Thelio"
	echo "4 = Framework Laptop"
	tput sgr0
	read answer
	case "$answer" in
		1) gpdwin;;
		2) thinkpad;;
		3) system76;;
		4) framework;;
		# Extra Q for lowercase (these things are case sensitive and redundancy is always better)
		Q) quitscript;;
		q) quitscript;;
	esac
	badoption
}
quitscript () {
	clear
	exit
}
badoption () {
	clear
	tput setaf 9
	echo "Invalid Option!"
	tput setaf 3
	echo "Returning to Main Menu..."
	tput sgr0
	sleep 3
	mainmenu
}
finish () {
	clear
	tput setaf 10
	echo "Done..."
	tput setaf 9
	echo "-----------------"
	echo "  PLEASE REBOOT"
	echo "-----------------"
	tput sgr0
	echo "Hit <return> to finish."
	read answer
	quitscript
}
finishtothinkpad () {
	clear
	tput setaf 10
	echo "Done..."
	tput setaf 9
	echo "-----------------"
	echo "  PLEASE REBOOT"
	echo "-----------------"
	tput sgr0
	echo "Hit <return> to return to Thinkpad menu."
	read answer
	thinkpad
}
gpdwin () {
	clear
	tput setaf 9
	echo "This option is a work in progress, please await commits"
	tput sgr0
	echo "Hit <return> to return to the main menu."
	read answer
	mainmenu
}
thinkpad () {
        clear
	tput setaf 3
	echo "What distro are you running? If you have returned here, input S to skip."
	echo "1 = Fedora"
	echo "S = Skip"
	tput setaf 9
	echo "Options for other distros are work in progress, please await commits"
	echo "Enter Q to quit"
	tput sgr0
	echo "Enter your selection followed by <return>:"
	read answer1
	case "$answer1" in
		1) fedora-tp;;
		# Redundancy in letters (see main menu for extra note)
		Q) quitscript;;
		q) quitscript;;
		S) skip;;
		s) skip;;
	esac
	badoption
	}
system76 () {
        clear
	tput setaf 3
        echo "This option is a work in progress, please await commits"
	tput sgr0
	echo "Hit <return> to return to the main menu."
	read answer
	mainmenu
}
fedora-tp () {
	clear
	tput setaf 3
	echo "Starting Installs..."
	tput sgr0
	sleep 2
	# Below line is subject to change depending on file location
	bash ./fedora-tp.sh
	finishtothinkpad
}
# End of Menu Functions/Script Functions
# Start of Main Script
while true
do
	mainmenu
done
# End of Main Script
