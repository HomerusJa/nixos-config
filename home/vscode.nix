{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];
      userSettings = {
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nixd";
        "nix.serverSettings".nixd = {
          formatting.command = ["alejandra"];
          options.nixos.expr = ''(builtins.getFlake "/home/jakob/nixos-config").nixosConfigurations.jakobs-ideapad.options'';
        };
        "[nix]"."editor.formatOnSave" = true;
      };
    };
  };

  home.packages = with pkgs; [
    nixd
    alejandra
  ];
}
