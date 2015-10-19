############################################################
# Dockerfile to build project tribunal (onoratainstanta.ro)
# Based on phusion/baseimage
############################################################
FROM phusion/baseimage:0.9.16
MAINTAINER Andrei Petcu <andrei@ceata.org>

ADD your_key.pub /tmp/your_key.pub
RUN cat /tmp/your_key.pub >> /root/.ssh/authorized_keys && rm -f /tmp/your_key.pub

RUN rm -f /etc/service/sshd/down

ENTRYPOINT ["/sbin/my_init"]
CMD ["--enable-insecure-key"]
