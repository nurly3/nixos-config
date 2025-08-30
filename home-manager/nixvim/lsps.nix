{ self, ... }: 

{
	programs.nixvim.plugins.lsp = {
		enable = true;
		servers = {
			rust_analyzer = {
				enable = true;
				installRustc = true;
				installCargo = true;
			};
		};
	};
}
