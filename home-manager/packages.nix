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
        inputs.zen-browser.packages."${system}".beta
	htop
	protonvpn-gui

	# Daily tools
	fuzzel
	# fish
	material-symbols
	swaylock
	starship
	brightnessctl
	swaybg

	# Deeper niri stuff
	xwayland-satellite
    ];
}
