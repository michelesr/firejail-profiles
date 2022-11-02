# disable network connectivity
net none

# blacklist home and whitelist only these exceptions
whitelist ${HOME}/Games/dos/

# dosbox-staging uses .config
whitelist ${HOME}/.config/dosbox

whitelist /usr/share/dosbox-staging/

# original dosbox uses ~/.dosbox
# whitelist ${HOME}/.dosbox

# blacklist /mnt /media /run/mount /run/media
disable-mnt

# private /tmp
private-tmp
private-etc empty

private-dev

# controller support
# ignore noinput

private-srv empty
private-opt empty
private-bin dosbox

# don't use a shell
shell none

apparmor
dbus-system none
dbus-user none
protocol unix,inet,inet6,netlink

# basic dosbox profile in /etc/firejail/dosbox.profile
include /etc/firejail/dosbox.profile
