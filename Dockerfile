FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

RUN curl -L https://cloud.mongodb.com/download/agent/monitoring/mongodb-mms-monitoring-agent_4.1.0.251-1_amd64.ubuntu1604.deb -o /mongodb-mms-monitoring-agent_4.1.0.251-1_amd64.ubuntu1604.deb
RUN dpkg -i /mongodb-mms-monitoring-agent_4.1.0.251-1_amd64.ubuntu1604.deb

WORKDIR /

ADD docker-entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
