# Example nixos flake

# What is this?
+ this is an example nixos flake based off of the flake setup i currently use
+ for ease it is set up with KDE plasma and SDDM and has home-manager set up already

# Why should I use it
+ I have tried to create a flake that is both compact and is well split apart for ease of readability
+ my hope is that this is an easy entrypoint for beginners to nixos

# A basic explanation of the setup
+ homes - this is everything to do with home manager, home manager is a per user way to manage things
+ hosts - this is everything system-wide for each host, I have included one example host but it is very simple to add more
+ README - this file, :p
+ flake.lock - this is the dependency lockfile, updated with nix flake update
+ flake.nix - this is the entry point for the configuration

# Can I do anything
+ Contributions to this set of dotfiles are warmly welcomed

# Credits
+ notashelf - got me into nixos, this wouldn't exist without them
+ floppydisk - have pinched formatting ideas from before, refactored their dotfiles using an earlier version of this example flake that wasn't published

# **How** do I use it?
+ get git (for now just ```nix-shell -p git```)
+ enable flakes and nix-command (```export NIX_CONFIG="experimental-features = nix-command flakes"```)
+ initalise a new repo (```git init *folder_name*```) cd into *folder_name* and run ```nix flake init -t github:rubiigen/example_nixos_dotfiles```
+ first off we have to rename some folders. rename hosts/example_host to hosts/*your_hostname_here* (e.g hosts/Canis) and homes/username to homes/*your_username_here* (e.g homes/alyx)
+ edit hosts/default.nix to replace example_host with your hostname, edit hosts/*your_hostname_here*/configuration.nix to change hostname too, also change users.users.username according to your username.
+ edit homes/default.nix to change username = ./username to fit your username (e.g alyx = ./alyx) and homes/username/default.nix to replace username with yours
+ lastly, cp /etc/nixos/hardware-configuration.nix which you shouldve generated to hosts/*your_hostname_here*
+ now go wild! 
+ once you've made all your modifications, rebuild using our new flake using ```nixos-rebuild switch --flake .#hostName --use-remote-sudo``` subbing in your hostname
+ for extra points, alias that command to a simple one such as 'rebuild'
