net none

env QT_QPA_PLATFORM=xcb

whitelist ~/.config/dolphin-emu/
whitelist ~/.cache/dolphin-emu/
whitelist ~/.local/share/dolphin-emu/
whitelist ~/Games/gamecube/

disable-mnt
private-tmp
private-etc empty
private-srv empty
private-opt empty
private-dev

protocol unix,inet,inet6,netlink

apparmor
dbus-system none
dbus-user none

include /etc/firejail/dolphin-emu.profile
