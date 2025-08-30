{ inputs, username, pkgs, timezone, hostname, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
      ../../modules/nixos/packages.nix
      ../../modules/nixos/locale.nix
      ../../modules/nixos/x11_gdm_gnome.nix
      ../../modules/nixos/audio.nix
      ../../modules/nixos/niri.nix
      inputs.niri-flake.nixosModules.niri
  ];

  users.users.${username} = {
    isNormalUser = true;
    description = "Nurlyx";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
#  thunderbird
    ];
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "${hostname}";
  networking.networkmanager.enable = true;

  time.timeZone = "${timezone}";

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };

  services.printing.enable = true;
  system.stateVersion = "25.05";
}
