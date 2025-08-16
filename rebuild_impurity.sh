export IMPURITY_PATH=$(pwd)
sudo nixos-rebuild switch --flake "$(pwd)#main-live" --impure
