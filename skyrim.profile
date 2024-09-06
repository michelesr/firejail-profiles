include ~/.config/firejail/include/nvidia-workaround.profile
include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

net none
disable-mnt
whitelist ${HOME}/Games/skyrim

env DXVK_HUD=none
env DXVK_STATE_CACHE_PATH=/home/michele/Games/skyrim/dxvk/
env WINEPREFIX=/home/michele/Games/skyrim

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

# Python 3
ignore blacklist ${PATH}/python3*
ignore blacklist /usr/include/python3*
ignore blacklist /usr/lib/python3*
ignore blacklist /usr/lib64/python3*
ignore blacklist /usr/local/lib/python3*
ignore blacklist /usr/share/python3*

include /etc/firejail/wine.profile
