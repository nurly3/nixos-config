{ ... }:

{
  stylix = {
    enable = true;
    polarity = "dark";
    image = ./niri/wallpaper.jpg;
    
    targets = {
      nixvim = {
	enable = true;
      };

      fish.enable = true;
      gtk.enable = true;
      swaylock.enable = true;
      kitty.enable = true;
    };
  };
}
