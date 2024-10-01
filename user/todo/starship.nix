{...}: {
  xdg.configFile."starship.toml".source = ./starship.toml;
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;
    settings = {};
  };
}
