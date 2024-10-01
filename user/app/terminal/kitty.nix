{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    kitty
  ];
  programs.kitty = {
    enable = true;
    font.name = "Hack Nerd Font Mono";
    font.size = 11;
    settings = {
      shell_integration = "disabled";
      enable_audio_bell = "no";
      tab_bar_style = "powerline";
      background_opacity = lib.mkForce "0.85";
      modify_font = "cell_width 90%";
    };
  };
}
