{
  config,
  pkgs,
  lib,
  ...
}: {
  home.file.".ssh" = {
    source = ./ssh;
    recursive = true;
  };
}
