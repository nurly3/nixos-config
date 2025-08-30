{ ... }:

{
  programs.fish = {
    enable = true;
    
    shellAliases = {
      "hr" = "home-manager switch --flake .#nurlyx";
      "nr" = "sudo nixos-rebuild switch --flake .#main --impure";
    };

    extraConfig = ''
      set -g fish_greeting ""
    '';
  };
}

