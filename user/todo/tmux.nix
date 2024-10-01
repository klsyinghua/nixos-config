{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    #shell = "${pkgs.nushell}/bin/fish";
    terminal = "tmux-256color";
    historyLimit = 100000;
    plugins = with pkgs; [
      tmuxPlugins.vim-tmux-navigator
      tmuxPlugins.power-theme
      #tmuxPlugins.tokyo-night-tmux
      #tmuxPlugins.tmux-colors-solarized
    ];
    extraConfig = ''
             set -g default-terminal "tmux-256color"
             set -ag terminal-overrides ",xterm-256color:RGB"
             set -g prefix C-a
             unbind C-b
             bind-key C-a send-prefix

             unbind %
             bind | split-window -h

             unbind '"'
             bind - split-window -v

             unbind r
             bind r source-file ~/.config/tmux/tmux.conf

             bind j resize-pane -D 5
             bind k resize-pane -U 5
             bind l resize-pane -R 5
             bind h resize-pane -L 5

             bind -r m resize-pane -Z

             set -g mouse on

             set-window-option -g mode-keys vi

             bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
             bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"
      unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when dragging with mouse

             # remove delay for exiting insert mode with ESC in Neovim
             set -sg escape-time 10

             set -g base-index 1
             set -g pane-base-index 1

    '';
  };
}
