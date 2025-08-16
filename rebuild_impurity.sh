sudo IMPURITY_PATH=$(pwd) nixos-rebuild switch --flake "$(pwd)#main-live" --impure
