include ~/.config/firejail/include/nvidia-workaround.profile
include ~/.config/firejail/include/shader-cache.profile
include ~/.config/firejail/include/wine-env.profile

env WINEARCH=wow64
env WINEPREFIX=/home/michele/Games/wow
env DXVK_HUD=compiler

whitelist ~/Games/wow

private-tmp
private-etc passwd,resolv.conf,localtime
private-dev
private-srv empty
private-opt empty

disable-mnt

dbus-user none
dbus-system none

# need these if you want to use .dll loaders (like VanillaFixes)
ignore apparmor
allow-debuggers

include /etc/firejail/wine.profile
