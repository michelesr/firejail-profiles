# NOTE: LinuxSampler uses tcp 127.0.0.0:8888
# so in order to use QSampler you have to
#       firejail --join=$(pidof ardour-6.5.0) qsampler
# if that doesn't work try -h 127.0.0.1 and -p 8888

apparmor

# required to save/load presets in LV2 plugins
noblacklist ${HOME}/.lv2

whitelist ${HOME}/.lv2
whitelist ~/Projects/Audio/

whitelist ~/.config/ardour7/
whitelist ~/.local/share/ardour7
whitelist ~/.cache/ardour7/

whitelist ~/.config/fontconfig/
whitelist ~/.fonts
read-only ~/.config/fontconfig/
read-only ~/.fonts

# pianoteq DRM will complain with no network interface
ignore net none
net wlp59s0

whitelist ~/.config/Modartt/
whitelist ~/.local/share/Modartt/

netfilter /home/michele/.config/firejail/netfilter/block-all.net

# LinuxSampler needs TCP sockets
ignore protocol unix

# required by DrumGizmo GUI
ignore ipc-namespace

include pw-jack.profile

# to load plugins in ~/.lv2/
ignore noexec ${HOME}

include /etc/firejail/ardour5.profile
