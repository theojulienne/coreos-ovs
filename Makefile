all: ovs.tar.gz
	docker build -t theojulienne/coreos-ovs .

ovs.tar.gz: build/Dockerfile
	docker build -t ovs-build build
	docker run -a stdout ovs-build tar -zcvf - /opt/ovs > ovs.tar.gz