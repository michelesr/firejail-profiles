noblacklist ${HOME}/.config/gammastep
noblacklist ${HOME}/.config/gammastep/config.ini

mkdir ${HOME}/.config/gammastep
whitelist ${HOME}/.config/gammastep
whitelist ${HOME}/.config/gammastep/config.ini

ignore noblacklist ${HOME}/.config/redshift
ignore noblacklist ${HOME}/.config/redshift.conf

ignore mkdir ${HOME}/.config/redshift
ignore whitelist ${HOME}/.config/redshift
ignore whitelist ${HOME}/.config/redshift.conf

net none
shell none
private-cache
private-cache
private-dev
private-tmp
private-bin gammastep
private-etc null
private-opt null

include /etc/firejail/redshift.profile
