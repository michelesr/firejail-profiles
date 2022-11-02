dbus-user none
dbus-system none

private-tmp

private-dev
private-srv empty
private-opt empty

# controller support
# ignore noinput
# protocol unix,inet,inet6,netlink

whitelist ~/.local/share/airshipper
whitelist ~/.cache/mesa_shader_cache
whitelist ~/.cache/nvidia/GLCache

include /etc/firejail/default.profile
