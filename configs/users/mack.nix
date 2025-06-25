{ config, pkgs, ... }:
{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.mack = {
        isNormalUser = true;
        description = "Mack";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
            kdePackages.kate
            spotify
            discord
            rofi-wayland
            grim
            slurp
            wl-clipboard
            wf-recorder
            signal-desktop
	    moonlight-qt
	    qmk
	    gnumake

        ];
    };
}
