# to allow tray icon see the option "allow-tray" in /etc/firejail/firejail.config

apparmor

# we keep the db in Nextcloud
noblacklist ${HOME}/Nextcloud

# can't blacklist app because contains the browser integration socket
noblacklist ${RUNUSER}/app

# since we disabled the blacklist, whitelist required stuff explicitly
mkdir ${RUNUSER}/app/org.keepassxc.KeePassXC
whitelist ${RUNUSER}/app/org.keepassxc.KeePassXC
# including the Wayland server socket
whitelist ${RUNUSER}/wayland*

include /etc/firejail/keepassxc.profile
