# this seems safe
ignore allow-debuggers

# disable network connectivity
net none

# blacklist /mnt /media /run/mount /run/media
disable-mnt

# blacklist home and whitelist only these exceptions
whitelist ${HOME}/Games/diablo2


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
