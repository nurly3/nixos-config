{ config, pkgs, inputs, username, system, ... }:

{
    home.username = "${username}";
    home.homeDirectory = "/home/${username}";

    # Import your modules
    imports = [
      ./git.nix
    ];

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

    # Session Variables
    home.sessionVariables = {
        EDITOR = "nvim";
    };

    # Extend PATH cleanly
    home.sessionPath = [
        "$HOME/.cargo/bin"
        "$HOME/.local/bin"
    ];

    # Enable Home Manager
    programs.home-manager.enable = true;

    # Required for backwards compatibility
    home.stateVersion = "24.11";
}