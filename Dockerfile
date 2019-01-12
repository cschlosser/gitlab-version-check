FROM ubuntu:18.04

RUN apt-get update && apt-get install -y s-nail curl jq &&  rm -rf /var/lib/apt/lists/*

ADD ./app.sh /opt/app.sh

ENTRYPOINT /opt/app.sh
