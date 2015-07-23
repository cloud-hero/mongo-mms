# Mongo MMS Agent in a container

## Deploy fast a mongo mms monitoring agent using Docker containers

## Setup
Build container

docker build -t cloudhero/mongo-mms .

Run container
docker run -d -e KEY=mongo_api_key --name mms cloudhero/mongo-mms

Notes
Mongo-mms container needs to resolve hostnames for each monog instance that is going to monitor. For this you can link it to all mongodb containers, use DNS or --add-host directive
