FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

RUN curl -L https://cloud.mongodb.com/download/agent/monitoring/mongodb-mms-monitoring-agent_3.6.0.201-1_amd64.deb -o /mongodb-mms-monitoring-agent_3.6.0.201-1_amd64.deb
RUN dpkg -i /mongodb-mms-monitoring-agent_3.6.0.201-1_amd64.deb

WORKDIR /

ADD docker-entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
