{ config, pkgs, username, inputs, impurity ? null, ... }:

{
  # Impure example:
  environment.etc."foobar.conf".text =
    if impurity != null then impurity.link ./foobar.conf else builtins.readFile ./foobar.conf;
}