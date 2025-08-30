{ ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
      ../../modules/nixos/packages.nix
      ../../modules/nixos/locale.nix
      ../../modules/nixos/x11_gdm_gnome.nix
      ../../modules/nixos/audio.nix
      ../../modules/nixos/niri.nix
  ]
}
