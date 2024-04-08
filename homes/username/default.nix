{
  pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [
    ./packages.nix # home.packages and similar stuff
    ./programs.nix # programs.<programName>.enable
    ./git.nix
  ];

  home = {
    # TODO - change username
    username = "username";
    homeDirectory = "/home/username";
  };

  # let HM manage itself when in standalone mode
  programs.home-manager.enable = true;

  # Nicely reload system(d) units when changing configs
  systemd.user.startServices = lib.mkDefault "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";
}
