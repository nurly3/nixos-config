{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
     vim
     git
     home-manager
  ];
}