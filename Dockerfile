FROM node:0.10.31

ADD ./src /src

EXPOSE 3000

RUN cd /src; pwd; npm install;

CMD ["node", "/src/server.js"]
