{config, lib, pkgs, ... }:
{
  networking = {
    hostName = "nixos"; # Define your hostname.
    networkmanager.enable = true;  # Easiest to use and most distros use this by default.
    firewall = {
      allowedTCPPorts = [];
      allowedUDPPorts = [];
    };
    proxy = {
      # default = "http://user:password@proxy:port/";
      # noProxy = "127.0.0.1,localhost,internal.domain";
    };
  };
}
