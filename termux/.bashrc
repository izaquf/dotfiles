#set -x # Debug mode

# The MOTD message will no longer be displayed
if [ -f "$PREFIX/etc/motd" ]  && [ -x "$PREFIX/etc/motd" ]; then
	rm -rf "$PREFIX/etc/motd"
fi

# PS1
# Test if the user is root (UID 0)
if [ $(id -u) -eq 0 ]; then
	# PS1 Root
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;31m\]@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '
fi

# Load the .bash_aliases file
if [ -f "$HOME/.bash_aliases" ]; then
	source "$HOME/.bash_aliases"
fi

# Some more pkg aliases
alias update='pkg update && pkg upgrade -y'

# Install packages quickly
install() {
	if [ -z "$1" ]; then
		echo "Usage: install <package-name> <package-name>"
	else
		pkg install "$@" -y
	fi
}

# Logo
logo() {
	clear
	echo ""
	echo ""
	echo -e "\e[1;31m"
	echo "     _____ _____ ____  __  __ _   ___  __    "
	echo "    |_   _| ____|  _ \|  \/  | | | \ \/ /    "
	echo "      | | |  _| | |_) | |\/| | | | |\  /     "
	echo "      | | | |___|  _ <| |  | | |_| |/  \     "
	echo "      |_| |_____|_| \_\_|  |_|\___//_/\_\    "
	echo -e "\e[0m"
	echo ""
	echo ""
}

# Called logo
logo