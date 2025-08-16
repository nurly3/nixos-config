export IMPURITY_PATH=$(pwd)
sudo -E nixos-rebuild switch --flake "$(pwd)#main-live" --impure