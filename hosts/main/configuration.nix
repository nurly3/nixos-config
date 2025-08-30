{ config, pkgs, inputs, system, hostname, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
      ../../modules/nixos/packages.nix
      ../../modules/nixos/locale.nix
      ../../modules/nixos/bootloader.nix
      ../../modules/nixos/networking_hostname.nix
      ../../modules/nixos/timezone.nix
      ../../modules/nixos/x11_gdm_gnome.nix
      ../../modules/irrelevant_to_me.nix
      ../../modules/audio.nix
      ../../modules/users.nix
      ../../modules/niri.nix
      inputs.niri-flake.nixosModules.niri
  ];
}
