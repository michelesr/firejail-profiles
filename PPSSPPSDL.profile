net none
apparmor

whitelist ${HOME}/.config/ppsspp/
whitelist ${HOME}/Games/psp/

ignore private-bin PPSSPP,PPSSPPQt,PPSSPPSDL,ppsspp
include /etc/firejail/ppsspp.profile
