{...}: {
  imports = [
    ./git.nix
    ./gh.nix
  ];

  home.stateVersion = "26.05"; # set once, never bump
}
