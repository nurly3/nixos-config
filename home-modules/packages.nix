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
        inputs.zen-browser.packages."${system}".beta
	protonvpn-gui

	# Daily tools
	fuzzel
	swaylock
	brightnessctl
	swaybg

	# Deeper niri stuff
	xwayland-satellite
    ];
}
