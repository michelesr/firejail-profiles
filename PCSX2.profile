net none

whitelist ~/.config/PCSX2
whitelist ~/.cache/PCSX2
whitelist ~/.local/share/PCSX2
whitelist ~/Games/ps2

disable-mnt

private-tmp
private-etc empty
private-srv empty
private-opt pcsx2
private-bin pcsx2,PCSX2,pcsx2-qt,bash,sh
private-dev

# shell required to run entrypoint script
ignore blacklist ${PATH}/sh
ignore blacklist ${PATH}/bash

protocol unix,inet,inet6,netlink

apparmor
dbus-system none
dbus-user none

include /etc/firejail/PCSX2.profile
