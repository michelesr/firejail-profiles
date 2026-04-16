# disable network connectivity
net none

whitelist ~/Games/ps1
whitelist ~/Games/nintendo
whitelist ~/.mednafen

disable-mnt

private-tmp
private-etc empty
private-srv empty
private-opt empty
ignore noinput
private-dev
private-bin mednafen

protocol unix,inet,inet6,netlink


apparmor
dbus-system none
dbus-user none

include /etc/firejail/default.profile
