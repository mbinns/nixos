{ config, pkgs, ... }:

{
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];
    # List packages installed in system profile. To search, run:
    environment.systemPackages = with pkgs; [
        vim 
        wget
        curl
        tmux
        git
        pavucontrol
        btop
	nfs-utils
	unzip
    ];
}
