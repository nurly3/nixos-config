{ pkgs, inputs, system, ... }:

{
    home.packages = with pkgs; [
# Dev
        kitty

# Notify
            libnotify

# Fonts
            nerd-fonts.jetbrains-mono
            nerd-fonts.caskaydia-cove

# Daily
            neofetch
            vesktop
            tree
            neovim
            inputs.zen-browser.packages."${system}".beta
            htop
            protonvpn-gui

# Daily tools
            fuzzel
            fish
            swaylock
            starship
            clang
            brightnessctl
            swaybg

# Deeper niri stuff
            xwayland-satellite
            ];
}
