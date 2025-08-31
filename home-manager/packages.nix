{ pkgs, inputs, system, ... }:

{
    home.packages = with pkgs; [
# Dev
        kitty
        zellij

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
            swaylock
            swaync
            fish
            starship
            clang
            waybar
            swww
            brightnessctl

# Deeper stuff
            xwayland-satellite
            cliphist
            wl-clipboard
            inputs.matugen.packages.${system}.default

# Language server
            gopls
            nixd
            pyright
            rust-analyzer
            ];
}
