_: {
  # enable programs
  programs = {
    git = {
      enable = true;
      userName = "git-username";
      userEmail = "git-email";
      extraConfig = {
        commit.gpgsign = true;
        gpg.format = "ssh";
        user.signingkey = "~/.ssh/id_ed25519.pub";
        init.defaultBranch = "master";
      };
    };
    # ... add more programs as you see fit
  };
}
