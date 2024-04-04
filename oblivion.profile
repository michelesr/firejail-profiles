net none
disable-mnt
whitelist ${HOME}/Games/oblivion
whitelist ~/.cache/nvidia

env WINEDEBUG=-all
env WINEESYNC=1
# env WINEFSYNC=1
env WINEARCH=win64
env DXVK_HUD=none
env DXVK_LOG_LEVEL=none
env DXVK_STATE_CACHE_PATH=/home/michele/Games/oblivion/dxvk/
env WINEPREFIX=/home/michele/Games/oblivion

# controller support
ignore noinput

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

# deprecated: is now done by default

dbus-user none
dbus-system none

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
ignore apparmor
allow-debuggers

# NOTE: apparmor prevents running binaries from the user home (and subdirectories)
# If you want to run wine from there properly, please comment this.
# Look at /etc/apparmor.d/firejail-default:85 for more information
# apparmor

protocol unix,netlink

include /etc/firejail/wine.profile
