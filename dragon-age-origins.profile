include ~/.config/firejail/include/nvidia-workaround.profile
include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

disable-mnt
whitelist ~/Games/dragon-age-origins

net none

env DXVK_STATE_CACHE_PATH=/home/michele/Games/dragon-age-origins/dxvk/
env WINEPREFIX=/home/michele/Games/dragon-age-origins

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

dbus-user none
dbus-system none

protocol unix

include /etc/firejail/wine.profile
