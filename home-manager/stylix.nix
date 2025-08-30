{ ... }:

{
  stylix = {
    enable = true;
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
