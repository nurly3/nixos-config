{ pkgs, inputs, ... }:

{
   programs.spicetify =
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  enable = true;

  enabledExtensions = with spicePkgs.extensions; [
    adblock
    hidePodcasts
    shuffle # shuffle+ (special characters are sanitized out of extension names)
  ];
  enabledCustomApps = with spicePkgs.apps; [
    newReleases
    ncsVisualizer
  ];
  enabledSnippets = with spicePkgs.snippets; [
    rotatingCoverart
    pointer
  ];

  theme = spicePkgs.themes.catppuccin;
  colorScheme = "mocha";
};

xdg.desktopEntries.spotify = {
  name = "Spotify";
  exec = "env NIXOS_OZONE_WL=1 spotify";
  icon = "spotify";
  categories = [ "Audio" "Music" "Player" "AudioVideo" ];
};

}
