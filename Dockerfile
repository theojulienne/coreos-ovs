FROM ubuntu:14.04

ADD ovs.tar.gz /
ADD /scripts /scripts
CMD /scripts/ovs-run

VOLUME /opt/ovs/etc