net none

whitelist ~/.config/PCSX2
whitelist ~/.cache/PCSX2
whitelist ~/.local/share/PCSX2
whitelist /usr/local/share/PCSX2/resources
whitelist ~/Games/ps2

whitelist /usr/share/PCSX2

disable-mnt

private-tmp
private-etc empty
private-srv empty
private-opt empty
private-bin pcsx2,PCSX2,pcsx2-qt
private-dev

protocol unix,inet,inet6,netlink

apparmor
dbus-system none
dbus-user none

include /etc/firejail/PCSX2.profile
