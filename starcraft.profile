env WINEPREFIX=/home/michele/Games/starcraft

# this seems safe
# ignore allow-debuggers

# disable network connectivity
net none

# blacklist home and whitelist only these exceptions
whitelist ${HOME}/Games/starcraft

disable-mnt

# private /tmp
private-tmp
private-etc passwd
private-dev
private-srv empty
private-opt empty

# don't use a shell

nodbus
# apparmor
ignore noexec ${HOME}
# protocol unix

# basic wine profile in /etc/firejail/wine.profile
include /etc/firejail/wine.profile
