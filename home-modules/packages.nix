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
	neofetch
        inputs.zen-browser.packages."${system}".beta
	protonvpn-gui
	inputs.nixvim.homeModules.nixvim

	# Daily tools
	fuzzel
	brightnessctl
	swaybg

	# Deeper niri stuff
	xwayland-satellite

	google-chrome
    ];
}
