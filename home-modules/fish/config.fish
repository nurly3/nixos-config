set -g fish_greeting ''
alias hr "home-manager switch --flake .#$USER"
alias nr "sudo nixos-rebuild switch --flake .#main --impure"
starship init fish | source
