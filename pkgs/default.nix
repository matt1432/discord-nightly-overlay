{
  pkgs,
  self,
  system,
  ...
}: {
  discord-canary = pkgs.callPackage ./discord/default.nix {branch = "canary";};
  discord-development = pkgs.callPackage ./discord/default.nix {branch = "development";};
  discord-ptb = pkgs.callPackage ./discord/default.nix {branch = "ptb";};
  discord-stable = pkgs.callPackage ./discord/default.nix {branch = "stable";};
}
