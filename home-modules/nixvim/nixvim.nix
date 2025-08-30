{ ... }:

{
	imports = [
		./colorscheme.nix
		./plugins.nix
	];

	programs.nixvim = {
		enabled = true;
		defaultEditor = true;
	};
}
