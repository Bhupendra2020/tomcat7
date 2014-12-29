FROM ubuntu
MAINTAINER Bhupendra Kumar <Bhupendra.kumar@softcrylic.com>

EXPOSE 8080

RUN apt-get -qq update
RUN apt-get -qq upgrade

RUN apt-get -qq install openjdk-7-jre
RUN apt-get -qq install tomcat7
RUN apt-get -qq install curl
RUN apt-get -qq install bash

ADD run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

RUN mv /etc/cron.daily/rotatelog /etc/cron.hourly/rotatelog

ADD rotatelog /etc/rotatelog.d/tomcat7
RUN chmod 644 /etc/rotatelog.d/tomcat7

ENTRYPOINT ["/opt/run.sh"]
