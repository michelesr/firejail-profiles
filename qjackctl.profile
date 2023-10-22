net none
apparmor
join-or-start qjackctl

include ${HOME}/.config/firejail/include/pw-jack.profile
include default.profile
