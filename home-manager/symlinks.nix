{ config, lib, ... }:

{
  xdg.configFile = {
    "niri/".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/niri;
    "kitty/kitty.conf".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/kitty/kitty.conf;
    "fish/config.fish".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/fish/config.fish;
    "nvim/".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/nvim;
    "matugen/".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/matugen;
    "fuzzel/fuzzel.ini".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/fuzzel/fuzzel.ini;
    "waybar/".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/waybar;
  };
}
