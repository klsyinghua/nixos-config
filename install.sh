#!/bin/bash
#
# formot disk
sudo nix --experimental-features "nix-command flakes"  --option substituters "https://mirror.sjtu.edu.cn/nix-channels/store" run github:nix-community/disko -- --mode disko ./disk-config.nix

# add channel without flake
nix-channel --add https://github.com/nix-community/disko/archive/master.tar.gz disko
nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
nix-channel --update

