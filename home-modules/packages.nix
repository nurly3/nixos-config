{ pkgs, inputs, system, ... }:

{
    home.packages = with pkgs; [
        # Dev
	kitty
        neovim        
        git

        # Notify
        libnotify

        # Fonts
        nerd-fonts.jetbrains-mono
        nerd-fonts.caskaydia-cove

        # Daily
        niri
        inputs.zen-browser.packages."${system}".beta
	protonvpn-gui
    ];
}
