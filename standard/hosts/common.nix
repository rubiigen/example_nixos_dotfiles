# this file allows for easy host addition as it adds the most basic common
# features of your nixos configuration
{
  inputs,
  config,
  pkgs,
  lib,
  ...
}: {
  services.xserver = {
    enable = true;
    displayManager.sddm.enable = true;
    desktopManager.plasma5.enable = true;
  };

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [
    bluez-alsa
    bluez
    mesa
    pavucontrol
    pulseaudio
  ];

  hardware.bluetooth.enable = true;

  services.acpid.enable = true;
  services.blueman.enable = true;
  services.dbus.enable = true;
  services.lvm.enable = true;
  services.printing.enable = true;
  services.upower.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  services.printing.drivers = [ pkgs.gutenprint ];

  console.useXkbConfig = true;

  networking.networkmanager.enable = true;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  security.polkit.enable = true;

  system.stateVersion = "24.05";
}
