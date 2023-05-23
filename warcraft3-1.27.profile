# this seems safe
ignore allow-debuggers

# disable network connectivity
net none

# blacklist /mnt /media /run/mount /run/media
disable-mnt

env WINEDEBUG=-all
env WINEESYNC=1
env WINEFSYNC=1
env WINEARCH=win32
env WINEPREFIX=/home/michele/Games/warcraft3-1.27

# blacklist home and whitelist only these exceptions
whitelist ${HOME}/Games/warcraft3-1.27


private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

shell none

dbus-user none
dbus-system none
apparmor
# protocol unix

include /etc/firejail/wine.profile
