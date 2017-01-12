set -x
mount --rbind /tmp/busybox /tmp/busybox
cat /proc/self/mountinfo
cd /tmp/busybox
pivot_root . tmp
export PATH=/bin:/sbin:$PATH
umount -l tmp
cat /proc/self/mountinfo
setsid sleep 1000 &> /dev/null < /dev/null &
