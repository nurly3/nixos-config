{ ... }:

{
  stylix = {
    image = ./niri/wallpaper.png;
    
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
