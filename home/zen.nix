{inputs, ...}: {
  imports = [inputs.zen-browser.homeModules.beta];

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;

    # For a more complete setup, including spaces, bookmarks, extensions, theming and so on, see:
    # https://github.com/0xc000022070/zen-browser-flake/blob/main/examples/13-complete-setup.nix
  };
}
