include ${HOME}/.config/firejail/include/modartt.profile
include ${HOME}/.config/firejail/include/pw-jack.profile
include ${HOME}/.config/firejail/include/lv2.profile

whitelist ${HOME}/Projects/Audio/carla
whitelist ${HOME}/.config/qt5ct

ignore protocol unix,inet,inet6
include /etc/firejail/default.profile
