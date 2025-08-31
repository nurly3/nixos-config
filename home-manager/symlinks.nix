{ ... }:

{
  xdg.configFile = {
  "niri/config.kdl".source = ./niri/config.kdl;
  # "kitty/kitty.conf".source = ./kitty/kitty.conf;
  # "fish/config.fish".source = ./fish/config.fish;
  "starship.toml".source = ./starship/starship.toml;
  };

  home.file = {
  "Pictures/wallpaper.jpg".source = ./niri/wallpaper.jpg;
  };
}
