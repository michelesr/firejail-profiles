# to allow tray icon see the option "allow-tray" in /etc/firejail/firejail.config
noblacklist ~/Documents
whitelist ~/Documents/House

join-or-start nextcloud

dbus-user.own com.nextcloudgmbh.Nextcloud
dbus-user.own com.nextcloud.desktopclient.nextcloud
include /etc/firejail/nextcloud.profile
