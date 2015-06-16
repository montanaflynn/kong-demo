FROM montanaflynn/kong-complete:latest
MAINTAINER Montana Flynn <montana@montanaflynn.me>

RUN apt-get update && apt-get install -y siege jq
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD welcome /root/welcome
ADD .bashrc /root/.bashrc
