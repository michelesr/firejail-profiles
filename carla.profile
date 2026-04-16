include ~/.config/firejail/include/modartt.profile
include ~/.config/firejail/include/pw-jack.profile
include ~/.config/firejail/include/lv2.profile

whitelist ~/Projects/Audio
whitelist ~/.config/qt5ct

ignore protocol unix,inet,inet6
include /etc/firejail/default.profile
