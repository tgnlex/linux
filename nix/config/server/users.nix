{config, lib, pkgs, ... }:
{
users.users.alex = {
     shell = pkgs.bash;
     isNormalUser = true;
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
       firefox
       tree
     ];
   };
}
