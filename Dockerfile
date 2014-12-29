FROM ubuntu
MAINTAINER Bhupendra Kumar <Bhupendra.kumar@softcrylic.com>

EXPOSE 8080

RUN apt-get -qq update
RUN apt-get -qq upgrade

RUN apt-get -qq install openjdk-7-jre
RUN apt-get -qq install tomcat7
RUN apt-get -qq install curl
RUN apt-get -qq install bash

VOLUME ["/deployment"]

ADD run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

ENTRYPOINT ["/opt/run.sh"]
