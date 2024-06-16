# this breaks the game
# ignore allow-debuggers

# disable network connectivity
# net none

env WINEDEBUG=-all
env WINEESYNC=1
env WINEFSYNC=1
env WINEARCH=win32
env DXVK_HUD=none
env DXVK_LOG_LEVEL=none
env WINEPREFIX=/home/michele/Games/wow

# blacklist /mnt /media /run/mount /run/media
disable-mnt

# blacklist home and whitelist only these exceptions
whitelist ${HOME}/Games/wow

# lutris wine is nice because of esync, although it doesn't
# seem to make a big difference, so I'd rather keep the regular
# wine, which it's kept up-to-date by pacman
#
# /etc/firejail/disable-programs.inc blacklists lutris
# ignore blacklist ${HOME}/.local/share/lutris
#
# we're using a custom version of wine for esync
# whitelist ${HOME}/.local/share/lutris/runners/wine/lutris-6.0-x86_64

private-tmp
private-etc passwd,resolv.conf,localtime
private-dev
private-srv empty
private-opt empty


dbus-user none
dbus-system none
# protocol unix

# need these if you want to use .dll loaders (like VanillaFixes)
ignore apparmor
allow-debuggers
# apparmor

include /etc/firejail/wine.profile
