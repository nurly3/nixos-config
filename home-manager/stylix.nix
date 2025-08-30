{ ... }:

{
  stylix = {
    image = ../../home-manager/niri/wallpaper.webp;
    
    targets = {
      nixvim = {
	enable = true;
	plugin = "base16-nvim";
	transparentBackground.main = true;
      };
    };
  };
}
