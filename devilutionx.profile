whitelist ${HOME}/.local/share/diasurgical/devilution

private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

shell none

dbus-user none
dbus-system none

apparmor
net none

include /etc/firejail/default.profile
