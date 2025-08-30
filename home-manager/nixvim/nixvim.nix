{ ... }:

{
	imports = [
		./colorscheme.nix
		./plugins.nix
		./lsps.nix
	];

	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		opts = {
			number = true;
			relativenumber = true;
			shiftwidth = 2;
		};
	};
}
