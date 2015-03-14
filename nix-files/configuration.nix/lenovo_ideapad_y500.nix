# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda";
  boot.supportedFilesystems = [ "zfs" ];

  networking = {
    hostName = "nixoslaptop"; # Define your hostname.
    hostId = "fcd3890a";
    wireless.enable = false;  # Enables wireless.
    interfaceMonitor.enable = false;
    # useDHCP = false;
    wicd.enable = true;
  };

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "lat9w-16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
     emacs
     chromium
     dropbox
     gimp
     git
     firefox
     inkscape
     libreoffice
     octave
     skype
     steam # https://nixos.org/wiki/Steam
     wget
     wine 
  ];
  
  nixpkgs.config = {
    allowUnfree = true;
    firefox = {
      enableGoogleTalkPlugin = true;
      enableAdobeFlash = true;
    };

    chromium = {
      enablePepperFlash = true; 
      enablePepperPDF = true;
    };
  };
  
  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  services.virtualboxHost.enable = true;

  # Thunar volume support.
  # services.udisks.enable = true;

  # Enable the X11 windowing system.
  services.xserver = { 
    enable = true;
    layout = "us";
    videoDrivers = [ "nvidia" ];
    synaptics = {
      enable = true;
      additionalOptions = 
      ''
        Option "RBCornerButton" "3"
      '';
    };
    desktopManager.xfce.enable = true;
  };

  # services.xserver.xkbOptions = "eurosign:e";

  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.kdm.enable = true;
  # services.xserver.desktopManager.kde4.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  # users.extraUsers.guest = {
  #   isNormalUser = true;
  #   uid = 1000;
  # };

  users.extraUsers.brandon = {
    isNormalUser = true;
    uid = 1000;
    home = "/home/brandon";
    extraGroups = [ "wheel" "networkmanager" "vboxusers" ];
  };
  users.extraUsers.lin = {
    isNormalUser = true;
    uid = 1001;
    home = "/home/lin";
    extraGroups = [ "networkmanager" "vboxusers" ];
 };

}
