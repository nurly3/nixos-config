{ pkgs, ... }: 

{
  environment.systemPackages = with pkgs; [
    git
      home-manager
      kdePackages.qt5compat
  ];
}
