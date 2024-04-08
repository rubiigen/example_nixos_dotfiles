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
