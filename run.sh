set -x -e -m
mkdir -p /tmp/xxx/
mount -t tmpfs xxx /tmp/xxx
touch /tmp/xxx/net
cat /proc/slabinfo | grep net_namespace
unshare -n mount --bind /proc/self/ns/net /tmp/xxx/net
cat /proc/slabinfo | grep net_namespace
unshare -m --propagation unchanged --map-root-user sh -x ./test_ct.sh
sleep 5
cat /proc/slabinfo | grep net_namespace
umount /tmp/xxx/net
sleep 1
cat /proc/slabinfo | grep net_namespace
sleep 1
umount /tmp/xxx
sleep 1
cat /proc/slabinfo | grep net_namespace
cat /proc/slabinfo | grep net_namespace
