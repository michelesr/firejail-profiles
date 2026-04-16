net none
apparmor
join-or-start qjackctl

include ~/.config/firejail/include/pw-jack.profile
include default.profile
