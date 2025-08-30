{ ... }:

let
	path = "..";
in
{
	programs.fish = {
		enable = true;
		prompt = "";

		shellAliases = {
			"hr" = "home-manager switch --flake ${path}#nurlyx";
			"nr" = "sudo nixos-rebuild switch --flake ${path}#main --impure";
		};
	};
}
