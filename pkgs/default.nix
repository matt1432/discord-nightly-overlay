{
  pkgs,
  self,
  ...
}: let
  inherit (pkgs.lib) listToAttrs nameValuePair;

  branches = [
    "stable"
    "canary"
    "ptb"
    "development"
  ];

  mkDiscordPkg = branch:
    nameValuePair
    "discord-${branch}" ((import ./discord {
        inherit (pkgs) callPackage fetchurl lib stdenv;
        inherit branch;
      })
      .override {
        inherit (self.packages.${pkgs.system}) vencord;
      });
in
  {
    discord = self.packages.${pkgs.system}.discord-stable;

    vencord = pkgs.callPackage ./vencord {inherit (self.inputs) Vencord-src;};
  }
  // listToAttrs (map mkDiscordPkg branches)
