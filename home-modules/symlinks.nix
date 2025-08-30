{ ... }:

{
  xdg.configFile = {
  "niri/config.kdl".source = ./niri/config.kdl;

  # Kitty
  "kitty/kitty.conf".source = ./kitty/kitty.conf;
  "kitty/Catppuccin-Mocha.conf".source = ./kitty/Catppuccin-Mocha.conf;
  

  "fish/config.fish".source = ./fish/config.fish;
  "starship.toml".source = ./starship/starship.toml;
  };

  home.file = {
  "Pictures/wallpaper.webp".source = ./niri/wallpaper.webp;
  };
}
