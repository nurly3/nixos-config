{ ... }:

{
  xdg.configFile = {
  "niri/config.kdl".source = ./niri/config.kdl;
  "kitty/kitty.conf".source = ./kitty/kitty.conf;
  };

  home.file = {
  "Pictures/wallpaper.webp".source = ./niri/wallpaper.webp;
  };
}
