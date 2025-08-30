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
        inputs.zen-browser.packages."${system}".beta
	protonvpn-gui

	# Daily tools
	fuzzel
	brightnessctl
	swaybg

	# Deeper niri stuff
	xwayland-satellite

	google-chrome
    ];
}
