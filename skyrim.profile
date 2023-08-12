net none
disable-mnt
whitelist ${HOME}/Games/skyrim
whitelist ~/.cache/nvidia

env WINEDEBUG=-all
env WINEESYNC=1
env WINEFSYNC=1
env WINEARCH=win64
env DXVK_HUD=none
env DXVK_LOG_LEVEL=none
env DXVK_STATE_CACHE_PATH=/home/michele/Games/skyrim/dxvk/
env WINEPREFIX=/home/michele/Games/skyrim

# controller support
ignore noinput

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

# deprecated: is now done by default
shell none

dbus-user none
dbus-system none

net none

# NOTE: if you want to run OBSE plugins (by using obse_loader.exe)
# you'll need to allow additional syscalls and so seccomp and apparmor
# needs to be disabled
#
# Interesting OBSE plugins:
# - stutter removal (makes things worse)
# - engine fixes (probably good but not essential)
#
# ESP mods can be used without OBSE
#
# ignore apparmor
# allow-debuggers

# NOTE: apparmor prevents running binaries from the user home (and subdirectories)
# If you want to run wine from there properly, please comment this.
# Look at /etc/apparmor.d/firejail-default:85 for more information
# apparmor

protocol unix,netlink

# Python 3
ignore blacklist ${PATH}/python3*
ignore blacklist /usr/include/python3*
ignore blacklist /usr/lib/python3*
ignore blacklist /usr/lib64/python3*
ignore blacklist /usr/local/lib/python3*
ignore blacklist /usr/share/python3*

include /etc/firejail/wine.profile
