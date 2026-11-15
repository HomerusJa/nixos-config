{lib, ...}: let
  unbind = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
in {
  dconf.settings = {
    "org/gnome/desktop/wm/keybindings" = {
      switch-to-workspace-1 = ["<Super>1"];
      switch-to-workspace-2 = ["<Super>2"];
      switch-to-workspace-3 = ["<Super>3"];
      switch-to-workspace-4 = ["<Super>4"];
      switch-to-workspace-5 = ["<Super>5"];
      switch-to-workspace-6 = ["<Super>6"];
      switch-to-workspace-7 = ["<Super>7"];
      switch-to-workspace-8 = ["<Super>8"];
      switch-to-workspace-9 = ["<Super>9"];
      switch-to-workspace-10 = ["<Super>10"];
      switch-to-workspace-11 = ["<Super>11"];
      switch-to-workspace-12 = ["<Super>12"];

      move-to-workspace-1 = ["<Shift><Super>1"];
      move-to-workspace-2 = ["<Shift><Super>2"];
      move-to-workspace-3 = ["<Shift><Super>3"];
      move-to-workspace-4 = ["<Shift><Super>4"];
      move-to-workspace-5 = ["<Shift><Super>5"];
      move-to-workspace-6 = ["<Shift><Super>6"];
      move-to-workspace-7 = ["<Shift><Super>7"];
      move-to-workspace-8 = ["<Shift><Super>8"];
      move-to-workspace-9 = ["<Shift><Super>9"];
      move-to-workspace-10 = ["<Shift><Super>10"];
      move-to-workspace-11 = ["<Shift><Super>11"];
      move-to-workspace-12 = ["<Shift><Super>12"];
    };

    "org/gnome/shell/keybindings" = {
      "switch-to-application-1" = unbind;
      "switch-to-application-2" = unbind;
      "switch-to-application-3" = unbind;
      "switch-to-application-4" = unbind;
      "switch-to-application-5" = unbind;
      "switch-to-application-6" = unbind;
      "switch-to-application-7" = unbind;
      "switch-to-application-8" = unbind;
      "switch-to-application-9" = unbind;
      "switch-to-application-10" = unbind;
      "switch-to-application-11" = unbind;
      "switch-to-application-12" = unbind;
    };
  };
}
