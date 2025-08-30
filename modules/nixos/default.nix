{ config, lib, ... }:

let
  enablePackages = lib.mkEnableOption "packages";
  enableLocale = lib.mkEnableOption "locale";
  enableX11GDMGnome = lib.mkEnableOption "x11_gdm_gnome";
  enableAudio = lib.mkEnableOption "audio";
  enableNiri = lib.mkEnableOption "niri";
  
in {
  config = {
    modules.enablePackages = enablePackages;
    modules.enableLocale = enableLocale;
    modules.enableX11GDMGnome = enableX11GDMGnome;
    modules.enableAudio = enableAudio;
    modules.enableNiri = enableNiri;
  };

  imports = [
    /etc/nixos/hardware-configuration.nix

    (if config.modules.enablePackages then ../../modules/nixos/packages.nix else null)
    (if config.modules.enableLocale then ../../modules/nixos/locale.nix else null)
    (if config.modules.enableX11GDMGnome then ../../modules/nixos/x11_gdm_gnome.nix else null)
    (if config.modules.enableAudio then ../../modules/nixos/audio.nix else null)
    (if config.modules.enableNiri then ../../modules/nixos/niri.nix else null)
  ];
}

