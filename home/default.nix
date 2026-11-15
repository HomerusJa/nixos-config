{ pkgs, ... }: {
  imports = [
    ./git.nix
    ./gh.nix
    ./gnome.nix
    ./vscode.nix
  ];

  # temporary until I create a proper shell setup
  home.packages = with pkgs; [
    wl-clipboard
  ];

  home.stateVersion = "26.05"; # set once, never bump
}
