{
  config,
  pkgs,
  ...
}: {
  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
    ];
    # no userSettings here, otherwise Home Manager also writes settings.json
  };

  # These settings are editable from within VSCode with their proper
  # Intellisense, but still live within the repository.
  xdg.configFile."Code/User/settings.json".source =
    config.lib.file.mkOutOfStoreSymlink "/home/jakob/nixos-config/home/vscode-settings.json";

  home.packages = with pkgs; [
    nixd
    alejandra
  ];
}
