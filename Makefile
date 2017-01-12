busybox:
	mkdir -p /tmp/busybox
	curl -o- -sSL 'https://github.com/jpetazzo/docker-busybox/raw/buildroot-2014.11/rootfs.tar' | tar -C /tmp/busybox -xf -

run:
	unshare -fp ./run.sh
