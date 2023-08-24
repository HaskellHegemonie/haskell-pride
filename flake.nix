{
  description = "testing haskell";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  };
  outputs = {self, nixpkgs, ...}@inputs:
    let
      name = "haskell-pride";
      system = "x86_64-linux";
      pkgs = import nixpkgs {inherit system;};
      ghc_with_pkgs = pkgs.haskellPackages.ghcWithPackages (hpkgs: with hpkgs; [cabal-install ansi-terminal]);
    in
    {
      packages.${system}.default = pkgs.haskellPackages.callPackage ./cabal.nix {};

      devShells.${system}.default = pkgs.haskellPackages.callPackage ./cabal.nix {};
    };
}
