# notifications
dbus-user.talk org.freedesktop.Notifications

# pipewire screensharing
# whitelist ${RUNUSER}/pipewire-0
# whitelist /usr/share/pipewire/client.conf
dbus-user.talk org.freedesktop.portal.Desktop

# keepassxc integration
whitelist ${RUNUSER}/org.keepassxc.KeePassXC.BrowserServer
noblacklist ${RUNUSER}/app
# we can whitelist this safely because there already a set of whitelist entries
# for ${RUNUSER} for the required stuff in the firefox profile
whitelist ${RUNUSER}/app/org.keepassxc.KeePassXC

# to download files on ram instead of hard drive
mkdir /tmp/firefox
whitelist /tmp/firefox

include /etc/firejail/firefox.profile

# uncomment this to fix WebGL and Lucidchart
# seccomp !kcmp,!chroot
