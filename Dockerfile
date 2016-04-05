# Container
FROM ubuntu:14.04

# Author
MAINTAINER SUMIN "dev@sumin.me"

# Update system
RUN apt-get update
RUN apt-get -y install squid

# Squid
ADD squid.sh /opt/bin/squid.sh
RUN chmod 777 /opt/bin/*.sh

# Expose ports
EXPOSE 3128

# ENTRYPOINT
ENTRYPOINT /opt/bin/squid.sh
