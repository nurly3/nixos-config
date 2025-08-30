{ ... }:

let
	path = "..";
in
{
	programs.fish = {
		enable = true;

		shellAliases = {
			"hr" = "home-manager switch --flake ${path}#nurlyx";
			"nr" = "sudo nixos-rebuild switch --flake ${path}#main --impure";
		};
	};
}
