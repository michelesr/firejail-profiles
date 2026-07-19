include ~/.config/firejail/include/nvidia-workaround.profile
include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

disable-mnt
whitelist ~/Games/divinity-original-sin-2

env DXVK_STATE_CACHE_PATH=/home/michele/Games/divinity-original-sin-2/dxvk/
env WINEPREFIX=/home/michele/Games/divinity-original-sin-2

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

dbus-user none
dbus-system none

# breaks controller hotplugging
net none

# disable controller support
noinput

# breaks GOG Galaxy DLL that is required by the game
# protocol unix,netlink

include /etc/firejail/wine.profile
