{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    niri-flake.url = "github:sodiboo/niri-flake";
    stylix.url = "github:nix-community/stylix";
    illogical-impulse.url = "github:xBLACKICEx/end-4-dots-hyprland-nixos";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
    system = "x86_64-linux";
  username = "nurlyx";
  hostname = "nixos";
  timezone = "Europe/Berlin";
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  in {
    nixosConfigurations.main = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs username system hostname timezone; };
      modules = [
	./hosts/main/configuration.nix
	  inputs.niri-flake.nixosModules.niri
      ];
    };

    homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [ 
	./home-manager/home.nix 
	inputs.spicetify-nix.homeManagerModules.default
	inputs.stylix.homeModules.stylix
	inputs.nixvim.homeModules.nixvim
	inputs.illogical-impulse.homeManagerModules.default
      ];
      extraSpecialArgs = {
	inherit inputs username system;
      };
    };
  };
}

