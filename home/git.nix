{...}: {
  programs.git = {
    enable = true;
    settings.user = {
      name = "Jakob Schluse";
      email = "jakob@schluse.com"; # your GitHub noreply address works well here
    };
  };

  programs.gh.enable = true;
}
