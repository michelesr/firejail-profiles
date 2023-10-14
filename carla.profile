include include/modartt.profile
include include/pw-jack.profile
include include/lv2.profile

whitelist ${HOME}/Projects/Audio/carla
whitelist ${HOME}/.config/qt5ct

ignore protocol unix,inet,inet6
include /etc/firejail/default.profile
