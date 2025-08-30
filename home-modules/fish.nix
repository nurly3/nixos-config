{ ... }:

{
  programs.fish = {
    enable = true;
    prompt = "";
    
    shellAliases = {
      "hr" = "home-manager switch --flake .#nurlyx";
      "nr" = "sudo nixos-rebuild switch --flake .#main --impure";
    };
  };
}

