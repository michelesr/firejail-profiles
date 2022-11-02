apparmor
net none

whitelist ${HOME}/Games/atari
whitelist ${HOME}/.config/stella

private-tmp
private-etc empty
private-srv empty
private-opt empty
# private-bin stella

dbus-system none
dbus-user none

protocol unix,inet,inet6,netlink

disable-mnt

include dev-whitelist.profile
include /etc/firejail/default.profile
