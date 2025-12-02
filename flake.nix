{
  description = "Custom NixOS configurations used by Commander Neptune of Team Galactic";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: {
    nixosConfigurations = rec {
      SagerNP7860J-AQEMU-COSMIC = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./modules/common.nix
          ./modules/desktops/cosmic.nix
          ./modules/hardware/aqemu/configuration.nix
          ./modules/hardware/aqemu/hardware-configuration.nix
          ./modules/hardware/SagerNP7860J/configuration.nix
          ({
            config,
            pkgs,
            ...
          }: {
            # Set host name
            networking.hostName = "NIX-OS-COSMIC-VM";
          })
        ];
      };
      SagerNP7860J-AQEMU-GNOME = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./modules/common.nix
          ./modules/desktops/gnome.nix
          ./modules/hardware/aqemu/configuration.nix
          ./modules/hardware/aqemu/hardware-configuration.nix
          ./modules/hardware/SagerNP7860J/configuration.nix
          ({
            config,
            pkgs,
            ...
          }: {
            # Set host name
            networking.hostName = "NIX-OS-GNOME-VM";
          })
        ];
      };
      SagerNP7860J-AQEMU-KDE = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./modules/common.nix
          ./modules/desktops/kde.nix
          ./modules/hardware/aqemu/configuration.nix
          ./modules/hardware/aqemu/hardware-configuration.nix
          ./modules/hardware/SagerNP7860J/configuration.nix
          ({
            config,
            pkgs,
            ...
          }: {
            # Set host name
            networking.hostName = "NIX-OS-KDE-VM";
          })
        ];
      };
      SagerNP7860J-AQEMU-LXQt = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./modules/common.nix
          ./modules/desktops/lxqt.nix
          ./modules/hardware/aqemu/configuration.nix
          ./modules/hardware/aqemu/hardware-configuration.nix
          ./modules/hardware/SagerNP7860J/configuration.nix
          ({
            config,
            pkgs,
            ...
          }: {
            # Set host name
            networking.hostName = "NIX-OS-LXQT-VM";
          })
        ];
      };
      nixos = SagerNP7860J-AQEMU-GNOME;
    };
  };
}