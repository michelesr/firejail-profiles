# this seems safe
ignore allow-debuggers

include ~/.config/firejail/include/nvidia-workaround.profile
include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

# disable network connectivity
net none

# blacklist /mnt /media /run/mount /run/media
disable-mnt

env WINEPREFIX=/home/michele/Games/warcraft3-1.27

# blacklist home and whitelist only these exceptions
whitelist ${HOME}/Games/warcraft3-1.27

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

dbus-user none
dbus-system none
apparmor
# protocol unix

include /etc/firejail/wine.profile
