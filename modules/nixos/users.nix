{ pkgs, username, ... }: 

{
  users.users.${username} = {
    isNormalUser = true;
    description = "Nurlyx";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
#  thunderbird
    ];
  };
}
