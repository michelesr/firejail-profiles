net none
apparmor

whitelist ${HOME}/.config/ppsspp/
whitelist ${HOME}/Games/psp/

include /etc/firejail/ppsspp.profile
