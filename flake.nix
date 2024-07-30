{
  inputs = {
    nixpkgs = {
      type = "github";
      owner = "NixOS";
      repo = "nixpkgs";
      ref = "nixos-unstable";
    };

    Vencord-src = {
      type = "github";
      owner = "Vendicated";
      repo = "vencord";
      flake = false;
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    # TODO: too lazy to support darwin
    supportedSystems = ["x86_64-linux"];

    perSystem = attrs:
      nixpkgs.lib.genAttrs supportedSystems (system:
        attrs (import nixpkgs {
          inherit system;
          # All the Discord packages are unfree binaries
          config.allowUnfree = true;
        }));
  in {
    packages =
      perSystem (pkgs:
        import ./pkgs {inherit self pkgs;});

    overlays.default = final: prev: {
      inherit
        (self.packages.${final.system})
        discord
        discord-canary
        discord-ptb
        discord-development
        vencord
        ;
    };

    formatter = perSystem (pkgs: pkgs.alejandra);

    devShells = perSystem (pkgs: {
      update = pkgs.mkShell {
        packages = with pkgs; [
          alejandra
          bash
          curl
          git
          gnugrep
          jq
          nix-prefetch-git
          nix-prefetch-github
          nix-prefetch-scripts
          nodejs
          prefetch-npm-deps
        ];
      };
    });
  };
}
