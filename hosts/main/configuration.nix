{ ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
      ../../modules/nixos/packages.nix
      ../../modules/nixos/locale.nix
      ../../modules/nixos/bootloader.nix
      ../../modules/nixos/networking_hostname.nix
      ../../modules/nixos/timezone.nix
      ../../modules/nixos/x11_gdm_gnome.nix
      ../../modules/nixos/irrelevant_to_me.nix
      ../../modules/nixos/audio.nix
      ../../modules/nixos/users.nix
      ../../modules/nixos/niri.nix
      inputs.niri-flake.nixosModules.niri
  ];
}
