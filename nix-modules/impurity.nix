{ config, pkgs, username, inputs, impurity ? null, ... }:

{
    home-manager.users.${username} = {
    xdg.configFile."foobar.conf".source = impurity.link ./foobar.conf;
  };
}