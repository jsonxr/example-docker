FROM node:0.10.31

ADD . /src

EXPOSE 3000

RUN cd /src; npm install;

CMD ["node", "/src/server.js"]

# FROM ubuntu:13.10
# RUN apt-get update
# RUN apt-get install -y nodejs npm git git-core
# #ADD start.sh /tmp/
# #RUN chmod +x /tmp/start.sh
# CMD /bin/bash