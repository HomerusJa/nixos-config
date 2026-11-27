{ inputs, config, lib, pkgs, ... }:
let
  zenDesktopRenamed = pkgs.runCommand "zen-desktop-renamed" { } ''
    mkdir -p $out/share/applications
    substitute ${config.programs.zen-browser.finalPackage}/share/applications/zen-beta.desktop \
      $out/share/applications/zen-beta.desktop \
      --replace-fail "Name=Zen Browser (Beta)" "Name=Zen Browser"
  '';
in
{
  imports = [ inputs.zen-browser.homeModules.beta ];

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
  };

  home.packages = [ (lib.hiPrio zenDesktopRenamed) ];
}