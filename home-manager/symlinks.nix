{ config, lib, ... }:

{
  xdg.configFile = {
    "niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/niri/config.kdl;
    "kitty/kitty.conf".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/kitty/kitty.conf;
    "fish/config.fish".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/fish/config.fish;
    "starship.toml".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/starship/starship.toml;
    "nvim/".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/nvim;
    "matugen/".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/matugen;
  };

  home.file = {
    "Pictures/wallpaper.jpg".source = ./niri/wallpaper.jpg;
  };
}
