# Adapted to Nixpkgs f0d832e36f08c8481b7f6d4098664cfeb1fcaa43
{
  branch ? "stable",
  callPackage,
  fetchurl,
  lib,
  stdenv,
}: let
  lockFile = {
    inherit (import ./srcs.nix) x86_64-linux;
  };
  info =
    lockFile.${stdenv.hostPlatform.system}.${branch}
    or (throw "${stdenv.hostPlatform.system} not supported on ${branch}");

  src = fetchurl {inherit (info) url hash;};

  meta = with lib; {
    description = "All-in-one cross-platform voice and text chat for gamers";
    homepage = "https://discordapp.com/";
    downloadPage = "https://discordapp.com/download";
    sourceProvenance = with sourceTypes; [binaryNativeCode];
    license = licenses.unfree;
    platforms = ["x86_64-linux" "x86_64-darwin" "aarch64-darwin"];
    mainProgram = "discord";
  };
  package =
    if stdenv.isLinux
    then ./linux.nix
    else ./darwin.nix;

  packages = (
    builtins.mapAttrs
    (_: value:
      callPackage package (value
        // {
          inherit (info) version;
          inherit src branch;
          meta = meta // {mainProgram = value.binaryName;};
        }))
    {
      stable = {
        pname = "discord";
        binaryName = "Discord";
        desktopName = "Discord";
      };
      ptb = rec {
        pname = "discord-ptb";
        binaryName =
          if stdenv.isLinux
          then "DiscordPTB"
          else desktopName;
        desktopName = "Discord PTB";
      };
      canary = rec {
        pname = "discord-canary";
        binaryName =
          if stdenv.isLinux
          then "DiscordCanary"
          else desktopName;
        desktopName = "Discord Canary";
      };
      development = rec {
        pname = "discord-development";
        binaryName =
          if stdenv.isLinux
          then "DiscordDevelopment"
          else desktopName;
        desktopName = "Discord Development";
      };
    }
  );
in
  packages.${branch}
