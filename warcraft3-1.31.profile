# this breaks the game
# ignore allow-debuggers

include ~/.config/firejail/include/nvidia-workaround.profile
include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

net none
disable-mnt
whitelist ${HOME}/Games/warcraft3-1.31

env WINEPREFIX=/home/michele/Games/warcraft3-1.31

# lutris wine is nice because of esync, although it doesn't
# seem to make a big difference, so I'd rather keep the regular
# wine, which it's kept up-to-date by pacman
#
# /etc/firejail/disable-programs.inc blacklists lutris
#
# ignore blacklist ~/.local/share/lutris
# whitelist ~/.local/share/lutris

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty


dbus-user none
dbus-system none

# NOTE: apparmor prevents running binaries from the user home (and subdirectories)
# If you want to run wine from there properly, please comment this.
# Look at /etc/apparmor.d/firejail-default:85 for more information
apparmor

protocol unix,inet,inet6,netlink

include /etc/firejail/wine.profile
