{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./neptune-common.nix
  ];
  # Enable X11 windowing system
  services.xserver.enable = true;
  # Desktop environment: GNOME
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  # Configure Plymouth theme
  boot.plymouth.theme = "bgrt";
  # Exclude unnecessary/outdated applications, etc.
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
  environment.gnome.excludePackages = with pkgs; [
    decibels
    epiphany
    evince
  ];
  # Install applications, etc.
  environment.systemPackages = with pkgs; [
    apostrophe
    arc-theme
    dialect
    drawing
    fragments
    gnome-browser-connector
    gnome-extension-manager
    gnome-photos
    gnome-podcasts
    gnome-power-manager
    gnome-secrets
    gnome-sound-recorder
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.dash-to-panel
    gnomeExtensions.desktop-icons-ng-ding
    gnomeExtensions.impatience
    gnomeExtensions.launch-new-instance
    gnomeExtensions.status-icons
    gnomeExtensions.tiling-assistant
    gnomeExtensions.user-themes
    gnomeExtensions.windownavigator
    libreoffice
    mousai
    numix-gtk-theme
    numix-icon-theme-circle
    orchis-theme
    papers
    papirus-icon-theme
    shortwave
    sysprof
    tuba
    warp
    wike
    wordbook
  ]
}