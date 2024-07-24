{
  buildNpmPackage,
  fetchFromGitHub,
  lib,
  esbuild,
  Vencord-src,
  buildWebExtension ? false,
}: let
  inherit (lib) getExe licenses;

  version = "1.9.5";
  gitHash = "80b493d";
in
  buildNpmPackage {
    pname = "vencord";
    version = "${version}+${gitHash}";
    src = Vencord-src;

    ESBUILD_BINARY_PATH = getExe (esbuild.overrideAttrs (final: _: {
      version = "0.15.18";
      src = fetchFromGitHub {
        owner = "evanw";
        repo = "esbuild";
        rev = "v${final.version}";
        hash = "sha256-b9R1ML+pgRg9j2yrkQmBulPuLHYLUQvW+WTyR/Cq6zE=";
      };
      vendorHash = "sha256-+BfxCyg0KkDQpHt/wycy/8CTG6YBA/VJvJFhhzUnSiQ=";
    }));

    # Supresses an error about esbuild's version.
    npmRebuildFlags = ["|| true"];

    makeCacheWritable = true;
    npmDepsHash = "sha256-4E6DEGRTyMMeXGTAzSlBqOoBslWTM3FDItGnOc0HNqc=";
    npmFlags = ["--legacy-peer-deps"];
    npmBuildScript =
      if buildWebExtension
      then "buildWeb"
      else "build";
    npmBuildFlags = ["--" "--standalone" "--disable-updater"];

    prePatch = ''
      cp ${./package-lock.json} ./package-lock.json
      chmod +w ./package-lock.json
    '';

    VENCORD_HASH = gitHash;
    VENCORD_REMOTE = "Vendicated/Vencord";

    installPhase =
      if buildWebExtension
      then ''
        cp -r dist/chromium-unpacked/ $out
      ''
      else ''
        cp -r dist/ $out
      '';

    meta = {
      description = "Vencord web extension";
      homepage = "https://github.com/Vendicated/Vencord";
      license = licenses.gpl3Only;
    };
  }
