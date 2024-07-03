{
  inputs = {
    nixpkgs = {
      type = "github";
      owner = "NixOS";
      repo = "nixpkgs";
      ref = "nixos-unstable";
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
        attrs system (import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        }));
  in {
    packages =
      perSystem (system: pkgs:
        import ./pkgs {inherit self system pkgs;});

    formatter = perSystem (_: pkgs: pkgs.alejandra);
  };
}
