{ config, pkgs, ... }:
{
    programs = {
        hyprland = {
            enable = true;
        };

	steam = {
	    enable=true;
	};
    };

    networking.hostName = "nixos-desktop"; # Define your hostname.
    networking.extraHosts =
	''
		192.168.1.55 truenas.wargames.binns
	'';

    #Controls what drivers are used for rendering
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.nvidia = {
        modesetting.enable = true;
        powerManagement.enable = false;
        powerManagement.finegrained = false;
        open = false;
        nvidiaSettings = true;
        package = config.boot.kernelPackages.nvidiaPackages.beta;
    };
    hardware.keyboard.qmk.enable = true;

    fileSystems."/mnt/home" = {
	    device = "truenas.wargames.binns:/mnt/Home/General/House";
	    fsType = "nfs";
	    options = [ "x-systemd.automount" "noauto" ];
    };
    fileSystems."/mnt/mack" = {
	    device = "truenas.wargames.binns:/mnt/Home/General/Mack";
	    fsType = "nfs";
	    options = [ "x-systemd.automount" "noauto" ];
    };
}
