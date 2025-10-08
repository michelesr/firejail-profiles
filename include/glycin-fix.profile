whitelist /usr/share/glycin-loaders
noblacklist /usr/bin/bwrap
noblacklist /proc/sys/kernel/overflowuid
noblacklist /proc/sys/kernel/overflowgid

ignore seccomp !chroot
ignore apparmor
seccomp !chroot,!mount,!pivot_root,!umount2
