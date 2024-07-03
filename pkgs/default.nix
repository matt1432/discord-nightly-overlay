{
  pkgs,
  self,
  system,
  ...
}: {
  discord = pkgs.callPackage ./discord/default.nix {branch = "stable";};
  discord-canary = pkgs.callPackage ./discord/default.nix {branch = "canary";};
  discord-development = pkgs.callPackage ./discord/default.nix {branch = "development";};
  discord-ptb = pkgs.callPackage ./discord/default.nix {branch = "ptb";};
}
