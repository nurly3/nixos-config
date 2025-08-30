{ ... }:

{
  xdg.configFile = {
  "niri/config.kdl".source = ./niri/config.kdl;
  "kitty/kitty.conf".source = ./kitty/kitty.conf;
  "fish/config.fish".source = ./fish/config.fish;
  };

  home.file = {
  "Pictures/wallpaper.webp".source = ./niri/wallpaper.webp;
  };
}
