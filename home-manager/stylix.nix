{ ... }:

{
  stylix = {
    image = ./niri/wallpaper.webp;
    
    targets = {
      nixvim = {
	enable = true;
      };

      swaylock.enable = true;
    };
  };
}
