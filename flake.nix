{
  description = "Custom NixOS Flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./modules/configuration.nix
          ./modules/hardware-configuration.nix
          ./modules/desktops/gnome.nix
        ];
      };
    };
  };
}