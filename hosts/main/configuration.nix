{ config, pkgs, username, inputs, ... }:

{
  imports = [ 
      /etc/nixos/hardware-configuration.nix
      ../../nix-modules/packages.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US";
    LC_IDENTIFICATION = "en_US";
    LC_MEASUREMENT = "en_US";
    LC_MONETARY = "en_US";
    LC_NAME = "en_US";
    LC_NUMERIC = "en_US";
    LC_PAPER = "en_US";
    LC_TELEPHONE = "en_US";
    LC_TIME = "en_US";
  };

  services.xserver.enable = true;
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "dvorak";
  };

  console.keyMap = "dvorak";
  services.printing.enable = true;
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    #jack.enable = true;
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "what";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes"];
  system.stateVersion = "25.05";
}
