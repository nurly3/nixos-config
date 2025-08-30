{ ... }:

{
	imports = [
		./colorscheme.nix
		./plugins.nix
	];

	programs.nixvim = {
		enable = true;
		defaultEditor = true;
	};
}
