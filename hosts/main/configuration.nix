{ config, pkgs, inputs, system, hostname, ... }:

let 
  modulePath = toString ../../modules/nixos;
in
{
  imports =
    [
      /etc/nixos/hardware-configuration.nix
      ${modulePath}/packages.nix
      ${modulePath}/locale.nix
      ${modulePath}/bootloader.nix
      inputs.niri-flake.nixosModules.niri
    ];

  networking.hostName = "${hostname}"; # Define your hostname.
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Berlin";
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

  };

  users.users.nurlyx = {
    isNormalUser = true;
    description = "Nurlyx";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.overlays = [ inputs.niri-flake.overlays.niri ];
  programs.niri.package = pkgs.niri-unstable;
  programs.niri.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?

}
