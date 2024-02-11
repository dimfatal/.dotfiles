prepare the system 
sudo apt update && sudo apt -y full-upgrade && sudo apt -y autoremove

install nix - https://nixos.org/download.html

sh <(curl -L https://nixos.org/nix/install) --no-daemon

add flakes support 
mkdir -p ~/.config/nix
echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf

create dir and copy/clone files to dir
mkdir ./dotfiles/nix/home-manager

build and activate flakes inside home-manager dir
nix build .#homeConfigurations.dimfatal.activationPackage
result/activate
rm result
home-manager switch --flake .#dimfatal

useful commands to check the installation

home-manager packages - installed packages
home-manager generations - history of installations
nix store diff-closures [generation path 1] [generation path 2]

