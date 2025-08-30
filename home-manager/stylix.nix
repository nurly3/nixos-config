{ ... }:

{
  stylix = {
    image = ./niri/wallpaper.webp;
    
    targets = {
      nixvim = {
	enable = true;
      };

      kitty = {
	enable = true;
	variant256Colors = true;
      };
    };
  };
}
