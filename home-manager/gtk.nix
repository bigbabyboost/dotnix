{ inputs, lib, config, pkgs, ... }: {
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Macchiato-Compact-Pink";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "pink" ];
        size = "compact";
        tweaks = [ "rimless" ];
        variant = "mocha";
      };
    };
    iconTheme = {
      name = "Catpuccin-mocha-pink";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "pink";
      };
    };
    cursorTheme = {
      name = "Catpuccin-light";
      package = pkgs.catppuccin-cursors.mochaPink;
    };
  };
}
