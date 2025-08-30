{ config, pkgs, inputs, username, system, ... }:

{
    home.username = "${username}";
    home.homeDirectory = "/home/${username}";

    # Import your modules
    imports = [
      ./git.nix
      ./packages.nix
      ./symlinks.nix
      ./spotify.nix
      ./nixvim.nix
      inputs.spicetify-nix.homeManagerModules.default
      inputs.nixvim.homeModules.nixvim
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
