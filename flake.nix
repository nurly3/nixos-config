{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };


  outputs = { self, nixpkgs, home-manager, ... }@inputs: 
    let 
      system = "x86_64-linux";
      username = "nurlyx";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
    nixosConfigurations.main = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs username system;};
      modules = [
        ./hosts/main/configuration.nix
      ];
    };

    homeConfigurations."${username}" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home-modules/home.nix ];
        extraSpecialArgs = {
          inherit inputs username system;
        };
      };
  };
}