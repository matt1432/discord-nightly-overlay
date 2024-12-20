{
  buildNpmPackage,
  fetchFromGitHub,
  lib,
  esbuild,
  Vencord-src,
  buildWebExtension ? false,
}: let
  inherit (lib) getExe licenses;

  version = "1.10.9";
  gitHash = "48a9aef";
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
    npmDepsHash = "sha256-bCuz0l9mwXFQ5bCgX+br2JwNB0S+jS+gA1kqls2iiCg=";
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
