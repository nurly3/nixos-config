{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    niri-flake.url = "github:sodiboo/niri-flake";
    illogical-impulse.url = "github:xBLACKICEx/end-4-dots-hyprland-nixos";
    matugen.url = "github:/InioX/Matugen"

      home-manager = {
        url = "github:nix-community/home-manager";
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
      ];
      extraSpecialArgs = {
        inherit inputs username system;
      };
    };
  };
}

