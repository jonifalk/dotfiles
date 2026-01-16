{ config, pkgs, ... }:

{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    ethtool
    obs-studio
    pinentry-all
    gamescope
    makemkv
    popsicle
    powertop
    nerd-fonts.droid-sans-mono
    s-tui
    resilio-sync
    proton-pass
  ];

  programs = {
    plasma = {
      enable = true;

      workspace = {
        clickItemTo = "select";
        lookAndFeel = "org.kde.breezedark.desktop";
      };
    };
  };
}
