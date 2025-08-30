{ ... }:

{
programs.nixvim = {
    enable = true;
    # put your nixvim config here
    # e.g.
    plugins.lualine.enable = true;
    colorscheme = "gruvbox";
  };
}
