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
  };

  # These settings are editable from within VSCode with their proper
  # Intellisense, but still live within the repository.
  xdg.configFile."Code/User/settings.json".source =
    config.lib.file.mkOutOfStoreSymlink "/home/jakob/nixos-config/home/vscode-settings.json";
  
  # Same thing for keybindings
  xdg.configFile."Code/User/keybindings.json".source =
    config.lib.file.mkOutOfStoreSymlink "/home/jakob/nixos-config/home/vscode-keybindings.json";

  home.packages = with pkgs; [
    nixd
    alejandra
  ];
}
