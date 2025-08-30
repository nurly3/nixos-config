{ ... }:

{
  programs.nixvim = {
  enable = true;
  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
  };
  plugins.lualine = {
    enable = true;
  };
  options = {
    number = true;
    shiftwidth = 2;
    relativenumber = true;
    termguicolors = true;
  };
  globals.mapleader = " ";
};
}
