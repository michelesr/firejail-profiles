# game breaks without this
ignore private-bin

# get rid of netlink
protocol unix,inet,inet6

# controller support
# ignore noinput

# comment to play online
net none
# uncomment to play online
# private-etc drirc,machine-id,openal,passwd,selinux,udev,xdg,resolv.conf

include /etc/firejail/openarena.profile
