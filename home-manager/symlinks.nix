{ config, lib, ... }:

let
liveLink = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/
in
{
  xdg.configFile = {
  "niri/config.kdl".source = ${liveLink}/niri/config.kdl;
  "kitty/kitty.conf".source = ${liveLink}/kitty/kitty.conf;
  "fish/config.fish".source = ${livelink}/fish/config.fish;
  "starship.toml".source = ${liveLink}/starship/starship.toml;
  "nvim/".source = config.lib.file.mkOutOfStoreSymlink ~/nixos-config/home-manager/nvim;
  };

  home.file = {
  "Pictures/wallpaper.jpg".source = ./niri/wallpaper.jpg;
  };
}
