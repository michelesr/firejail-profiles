# net none
protocol unix,inet,inet6,netlink

# controller hotplug requires this
# ignore noroot

# comment for controller hotplug
private-dev

include /etc/firejail/supertuxkart.profile
