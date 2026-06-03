include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

env WINEPREFIX=/home/michele/Games/diablo2

# this seems safe
ignore allow-debuggers

# disable network connectivity
net none

# blacklist home and whitelist only these exceptions
whitelist ~/Games/diablo2

disable-mnt

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

dbus-user none
dbus-system none

apparmor
protocol unix

include /etc/firejail/wine.profile
