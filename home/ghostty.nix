{ ... }: {
  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "FiraCode Nerd Font";
      font-feature = "'cv01', 'cv02', 'cv14', 'ss05', 'ss04', 'ss03', 'cv30', 'ss02', 'cv24', 'ss09', 'ss07'";
      theme = "Catppuccin Mocha";
    };
  };
}