net none

private-tmp
private-etc passwd
private-dev
private-srv empty

# private-opt doesn't work fine
whitelist /opt/daggerfall-unity

ignore noinput
protocol unix,inet,inet6,netlink

whitelist ~/.config/unity3d
whitelist ~/.local/share/daggerfall-unity
apparmor

include /etc/firejail/default.profile
