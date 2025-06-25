{ config, pkgs, ... }:
{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.user = {
        isNormalUser = true;
        description = "common user";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
            kdePackages.kate
            signal-desktop

        ];
    };
}
