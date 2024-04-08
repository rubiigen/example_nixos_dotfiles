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
+ initalise a new repo (```git init *folder_name*```) cd into *folder_name* and run ```nix flake init github:rubiigen/example_nixos_dotfiles```
+ first off, in hosts you will want to move the example_host folder to a folder called your hostname, this is for ease
+ now edit hosts/default.nix and change every occurence of example_host with your hostname - case sensitivity matters for both of these stages
+ now edit hosts/hostname/configuration.nix and edit the occurence of example_host with your hostname, also edit users.users.username replacing username with yours
+ next cp /etc/nixos/hardware-configuration.nix which you shouldve generated to hosts/hostname
+ now move homes/username to a folder with your username, again for ease
+ edit the username = ./username line in homes/default.nix to correspond with yours
+ lastly edit the homes/**your_username**/default.nix to replace instances with username with yours
+ now go wild! 
