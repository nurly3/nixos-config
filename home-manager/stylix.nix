{ ... }:

{
  stylix = {
    enable = true;
    polarity = "dark";
    image = ./niri/wallpaper.png;
    
    targets = {
      nixvim = {
	enable = true;
      };

      fish.enable = true;

      gtk.enable = true;
    };
  };
}
