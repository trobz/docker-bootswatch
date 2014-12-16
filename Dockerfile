############################################################
# Trobz Bootswatch container
# see: http://bootswatch.com/help/
############################################################

FROM trobz/ubuntu:14.04

MAINTAINER Michel Meyer <mmeyer@trobz.com>

RUN apt-get update && \
    apt-get -y dist-upgrade

ADD scripts/setup/bootswatch.sh /tmp/setup/bootswatch.sh  
RUN /bin/bash < /tmp/setup/bootswatch.sh

# executed at container start up
ADD scripts/start/99_bootswatch.sh /usr/local/docker/start/init/99_bootswatch.sh
ADD scripts/start/run.sh /usr/local/docker/start/run.sh

EXPOSE 3000
EXPOSE 35729
VOLUME ["/opt/bootswatch/workspace"]
ENTRYPOINT ["/usr/local/docker/start/main.sh"]
