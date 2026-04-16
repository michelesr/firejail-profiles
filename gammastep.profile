noblacklist ~/.config/gammastep
noblacklist ~/.config/gammastep/config.ini

mkdir ~/.config/gammastep
whitelist ~/.config/gammastep
whitelist ~/.config/gammastep/config.ini

ignore noblacklist ~/.config/redshift
ignore noblacklist ~/.config/redshift.conf

ignore mkdir ~/.config/redshift
ignore whitelist ~/.config/redshift
ignore whitelist ~/.config/redshift.conf

net none
private-cache
private-cache
private-dev
private-tmp
private-bin gammastep
private-etc null
private-opt null

include /etc/firejail/redshift.profile
