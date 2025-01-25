echo "Runnning package cleanup"
#sudo pacman -Syu 
packages=(
	neofetch
	kitty
	feh
	picom
	neovim
	polybar
)
echo "Installing packages"
sudo pacman -Rns --noconfirm "${packages[@]}"
echo "Stowing Packages"


stowpackages=(
	neofetch
	kitty
	picom
	nvim

	polybar
	#bash
)

cd ~/dotfiles
stow -D "${stowpackages[@]}" 
