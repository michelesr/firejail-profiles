# to allow tray icon see the option "allow-tray" in /etc/firejail/firejail.config
noblacklist ${HOME}/Documents
whitelist ${HOME}/Documents/House

join-or-start nextcloud

dbus-user.own com.nextcloudgmbh.Nextcloud
include /etc/firejail/nextcloud.profile
