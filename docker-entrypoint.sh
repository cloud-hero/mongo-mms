#!/bin/bash

if [ -z "$KEY" ]; then
        echo "Please add your mmsApiKey"
   else
        echo "mmsApiKey="$KEY >> /etc/mongodb-mms/monitoring-agent.config
fi

/usr/bin/mongodb-mms-monitoring-agent -conf /etc/mongodb-mms/monitoring-agent.config
