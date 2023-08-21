# disable network connectivity
net none

whitelist ${HOME}/Games/morrowind
whitelist ${HOME}/.config/openmw
whitelist ${HOME}/.local/share/openmw
whitelist /usr/share/games/openmw

# for qt themes
# whitelist ${HOME}/.config/qt5ct

disable-mnt

private-tmp
private-dev
private-etc openmw
private-srv empty
private-opt empty

# private-bin openmw,openmw-launcher,openmw-cs

protocol unix,inet,inet6,netlink

apparmor
nodbus

# Lua
ignore blacklist ${PATH}/lua*
ignore blacklist /usr/include/lua*
ignore blacklist /usr/lib/liblua*
ignore blacklist /usr/lib/lua
ignore blacklist /usr/lib64/liblua*
ignore blacklist /usr/lib64/lua
ignore blacklist /usr/share/lua*

ignore noinput
include /etc/firejail/openmw.profile
