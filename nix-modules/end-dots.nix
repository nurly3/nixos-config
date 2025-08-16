{ ... }:

{
    illogical-impulse = {
    # Enable the dotfiles suite
    enable = true;

    hyprland = {
        # Enable Wayland ozone
        ozoneWayland.enable = true;
    };

    # Dotfiles configurations
    dotfiles = {
        fish.enable = true;
        kitty.enable = true;
    };
};
}