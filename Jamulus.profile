# config directory
whitelist ~/.config/Jamulus

apparmor
disable-mnt
private-tmp

# qt themes
whitelist ${HOME}/.config/qt5ct

dbus-user none
dbus-system none

include pw-jack.profile
include /etc/firejail/default.profile
