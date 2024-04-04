# disable network connectivity
net none

whitelist ${HOME}/.mame

disable-mnt

private-tmp
private-etc empty
private-srv empty
private-opt empty
ignore noinput
private-dev

# private-bin mame

protocol unix,inet,inet6,netlink


apparmor
nodbus

include /etc/firejail/default.profile
