echo "Starting setup"
#sudo pacman -Syu 
packages=(
	neofetch
	kitty
	feh
	git
	picom
	neovim
	i3
	polybar
)
echo "Installing packages"
sudo pacman -S --noconfirm --needed "${packages[@]}"
echo "Stowing Packages"


stowpackages=(
	neofetch
	kitty
	picom
	nvim
	i3
	polybar
	bash
)

cd ~/dotfiles
stow "${stowpackages[@]}" --adopt 
git reset --hard
echo "Restarting i3"
i3-msg restart
#echo "Installing yay"
#if ! command -v yay &> /dev/null; then
#	git clone https://aur.archlinux.org/yay.git /tmp/yay
#	cd /tmp/yay || exit
#	makepkg -si --noconfirm
#	cd - || exit
#	rm -rf /tmp/yay
#fi

#aur_packages = (
#	firefox
#	dmenu
#)

#echo "Installing AUR Packages"
#yay -S --noconfirm "${aur_packages[@]}"
#echo "Setup Complete"
