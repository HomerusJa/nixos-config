{...}: {
  imports = [
    ./ghostty.nix
    ./git.nix
    ./gnome.nix
    ./shell.nix
    ./vscode.nix
    ./zen.nix
  ];

  home.stateVersion = "26.05"; # set once, never bump
}
