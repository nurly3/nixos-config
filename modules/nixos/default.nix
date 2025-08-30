{ ... }: 

{ 
  imports = [ 
    ./niri.nix 

    # System
    ./packages.nix
    /etc/nixos/hardware-configuration.nix 
  ];
  
  # ...
}
