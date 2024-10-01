{
  pkgs,
  inputs,
  ...
}: {
    imports = [
    inputs.nixvim.homeManagerModules.nixvim
   ];
   
  programs.nixvim = {
    enable = true;
    opts = {
      updatetime = 100; # Faster completion
      number = true;
      relativenumber = true;
      splitbelow = true;
      splitright = true;
      scrolloff = 4;

      autoindent = true;
      clipboard = "unnamedplus";
      expandtab = true;
      shiftwidth = 2;
      smartindent = true;
      tabstop = 2;

      ignorecase = true;
      incsearch = true;
      smartcase = true;
      wildmode = "list:longest";

      swapfile = false;
      undofile = true; # Build-in persistent undo
    };
    colorschemes.dracula.enable = true;
    globals.mapleader = " ";
    keymaps = [
      # Global
      {
        key = "<leader>e";
        action = "<CMD>NvimTreeToggle<CR>";
        options.desc = "Toggle NvimTree";
      }
      # File
      {
        mode = "n";
        key = "<leader>f";
        action = "+find/file";
      }
    ];

    ##
    plugins.nvim-tree.enable = true;
    plugins.telescope.enable = true;
    plugins.which-key.enable = true;
    plugins.nvim-autopairs.enable = true;
    plugins.gitsigns.enable = true;
    plugins.lightline.enable = true;
    plugins.treesitter.enable = true;
  };
}
