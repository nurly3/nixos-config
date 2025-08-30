{ ... }: 

{ 
  imports = [ 
    /etc/nixos/hardware-configuration.nix 
    ./niri.nix 

    # System
    ./packages.nix
  ];
}
