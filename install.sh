sudo pacman -S xorg-server xorg-init xorg mesa nvdia nvdia-dkms nvidia_prime nvdia-utils prime-run cronie vim bspwm sxhkd clang gcc feh firefox fzf git htop nvtop kitty alacritty tmux lm_sensors ripgrep make openvpn openssh pavucontrol perl polybar stress tree-sitter nvim-tree-sitter unzip zip lazygit curl fd

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

#sudo systemctl enable cronie
#sudo systemctl start cronie

# https://github.com/allusive-dev/compfy
