net none
apparmor

whitelist ~/.config/ppsspp/
whitelist ~/Games/psp/

ignore private-bin PPSSPP,PPSSPPQt,PPSSPPSDL,ppsspp
include /etc/firejail/ppsspp.profile
