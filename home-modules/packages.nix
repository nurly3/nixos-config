{ pkgs, ... }:

{
    # Add system/user packages
    home.packages = with pkgs; [
        # Dev
        neovim        
        git
        google-chrome
        vscode

        # Notify
        libnotify

        # Fonts
        nerd-fonts.jetbrains-mono
        nerd-fonts.caskaydia-cove

        # Daily
        niri
    ];
}