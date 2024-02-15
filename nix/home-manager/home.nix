{
  config,
  pkgs,
  ...
}: {
  home = {
    homeDirectory =
      if pkgs.stdenv.isLinux
      then "/home/dimfatal"
      else "/Users/dimfatal";

    packages = with pkgs; [
      bat
      bloop
      coursier
      direnv
      docker
      docker-compose
      git
      htop
      ipfetch
      k9s
      keychain
      metals
      neovim
      nix-direnv
      stow
      tmux
      unzip
      zip
    ];

    stateVersion = "23.11";
    username = "dimfatal";
  };

  programs.home-manager.enable = true;
}
