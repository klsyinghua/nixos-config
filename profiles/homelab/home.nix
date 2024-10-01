{
  config,
  pkgs,
  ...
}: {
  # Home Manager
  imports = [
    ../../user/app/terminal/kitty.nix
    ../../user/app/git/git.nix
    ../../user/app/flatpak/flatpak.nix
    ../../user/shell/sh.nix
    ../../user/app/nixvim/nixvim.nix
  ];

  home.username = "alan";
  home.homeDirectory = "/home/alan";

  programs.home-manager.enable = true;

  # 添加你需要的包和配置
  home.packages = with pkgs; [
    (nerdfonts.override {fonts = ["Hack"];})
  ];
  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
}
