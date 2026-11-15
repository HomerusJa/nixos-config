{...}: {
  imports = [
    ./git.nix
    ./gh.nix
    ./gnome.nix
    ./vscode.nix
  ];

  home.stateVersion = "26.05"; # set once, never bump
}
