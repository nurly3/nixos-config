{ ... }: 

{ 
  imports = [ 
    ./niri.nix 
    ./stylix.nix

    # System
    ./packages.nix
    /etc/nixos/hardware-configuration.nix 
  ];
}
