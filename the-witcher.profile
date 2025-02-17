include ~/.config/firejail/include/nvidia-workaround.profile
include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

# commented because it breaks PS3 controller hotplugging
# net none

disable-mnt
whitelist ${HOME}/Games/the-witcher

env DXVK_HUD=compiler
env DXVK_ASYNC=1
env DXVK_STATE_CACHE_PATH=/home/michele/Games/the-witcher/dxvk/
env WINEPREFIX=/home/michele/Games/the-witcher

# controller support
ignore noinput

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

dbus-user none
dbus-system none

protocol unix,netlink

include /etc/firejail/wine.profile
