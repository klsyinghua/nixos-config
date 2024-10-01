{...}: {
  # git
  programs.git = {
    enable = true;
    userName = "Alan Lu";
    userEmail = "";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
