# NOTE: LinuxSampler uses tcp 127.0.0.0:8888
# so in order to use QSampler you have to
#       firejail --join=$(pidof ardour-6.5.0) qsampler
# if that doesn't work try -h 127.0.0.1 and -p 8888

apparmor

whitelist ~/Projects/Audio/

whitelist ~/.config/ardour6/
whitelist ~/.local/share/ardour6
whitelist ~/.cache/ardour6/

whitelist ~/.config/ardour7/
whitelist ~/.local/share/ardour7
whitelist ~/.cache/ardour7/

whitelist ~/.config/ardour8/
whitelist ~/.local/share/ardour8
whitelist ~/.cache/ardour8/

whitelist ~/.config/fontconfig/
whitelist ~/.fonts
read-only ~/.config/fontconfig/
read-only ~/.fonts

# LinuxSampler needs TCP sockets
ignore protocol unix

# required by DrumGizmo GUI
ignore ipc-namespace

include ${HOME}/.config/firejail/include/pw-jack.profile
include ${HOME}/.config/firejail/include/lv2.profile
include ${HOME}/.config/firejail/include/modartt.profile
include /etc/firejail/ardour5.profile
