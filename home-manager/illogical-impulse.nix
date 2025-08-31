{ pkgs, ... }:

{
  illogical-impulse = {
# Enable the dotfiles suite
    enable = true;

    hyprland = {
# Use customized Hyprland build
      package = pkgs.hyprland;
      xdgPortalPackage = pkgs.xdg-desktop-portal-hyprland;

# Enable Wayland ozone
      ozoneWayland.enable = true;
    };

# Dotfiles configurations
    dotfiles = {
      fish.enable = true;
      kitty.enable = true;
    };
  };
}
