{ ... }: 

{ 
  imports = [ 
    ./niri.nix 
    ./qt.nix

    # System
    ./packages.nix
    /etc/nixos/hardware-configuration.nix 
  ];
  
  # ...
}
