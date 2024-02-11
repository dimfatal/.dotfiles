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
      neovim
    ];

    stateVersion = "23.11";
    username = "dimfatal";
  };

  programs.home-manager.enable = true;
}
