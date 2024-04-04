# this seems safe
ignore allow-debuggers

# disable network connectivity
net none

# blacklist home and whitelist only these exceptions
whitelist ${HOME}/Games/starcraft

# blacklist /mnt /media /run/mount /run/media
disable-mnt

# private /tmp
private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

# don't use a shell

nodbus
apparmor
protocol unix

# basic wine profile in /etc/firejail/wine.profile
include wine.profile
