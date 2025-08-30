{ self, ... }: 

{
	plugins.lsp = {
		enable = true;
		servers = {
			rust-analyzer.enable = true;
			python-langserver.enable = true;
		};
	};
}
