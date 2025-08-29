{ config, pkgs, inputs, username, system, ... }:

{
    home.username = "${username}";
    home.homeDirectory = "/home/${username}";

    # Import your modules
    imports = [
      ./git.nix
      ./packages.nix
    ];

    # Session Variables
    home.sessionVariables = {
        EDITOR = "nvim";
    };

    xdg.configFile."niri/config.kdl".source = ./niri/config.kdl;

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
