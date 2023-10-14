# pianoteq DRM will complain with no network interface
ignore net none
net wlan0

whitelist ~/.config/Modartt/
whitelist ~/.local/share/Modartt/

netfilter /home/michele/.config/firejail/netfilter/block-all.net
