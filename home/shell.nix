{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      path = "${config.home.homeDirectory}/.zsh_history";
      size = 10000;
      save = 10000;
      ignoreDups = true;
      ignoreSpace = true;
      share = true;
    };

    shellAliases = {
      ls = "eza --color=auto --group-directories-first";
      ll = "eza -la --color=auto --group-directories-first --git";
      tree = "eza --tree --color=auto";
      o = "xdg-open";


      ",config-edit" = "code ~/nixos-config";
      ",config-switch" = "nixos-rebuild switch --sudo --flake ~/nixos-config";
      ",config-update" = "nix flake update --flake ~/nixos-config";
    };

    initContent = lib.mkAfter ''
      # Accept the suggestion with Ctrl+Space
      bindkey '^ ' autosuggest-accept
      typeset -U path PATH
    '';
  };

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
  ];

  programs.bat.enable = true;
  programs.fzf.enable = true;
  programs.starship = {
    enable = true;
    presets = [ "catppuccin-powerline" ];
    settings = {
      palette = "catppuccin_mocha";
    };
  };
  programs.zoxide.enable = true;

  home.packages = with pkgs; [
    eza
    wl-clipboard
  ];
}
