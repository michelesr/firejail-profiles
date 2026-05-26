include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

env WINEPREFIX=/home/michele/Games/starcraft

# this seems safe
ignore allow-debuggers

# disable network connectivity
net none

# blacklist home and whitelist only these exceptions
whitelist ~/Games/starcraft

disable-mnt

# private /tmp
private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

dbus-user none
dbus-system none

apparmor
# ignore noexec ${HOME}
protocol unix

# basic wine profile in /etc/firejail/wine.profile
include /etc/firejail/wine.profile
