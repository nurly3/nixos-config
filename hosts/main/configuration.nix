{ inputs, username, pkgs, timezone, hostname, ... }:

{
  imports = [
      ../../modules/nixos/default.nix
      
  ];

  users.users.${username} = {
    isNormalUser = true;
    description = "User";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
#  thunderbird
    ];
  };

  modules.enableNiri = false;

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
