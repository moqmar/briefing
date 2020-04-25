FROM node:12-alpine

RUN apk add --no-cache git && git clone https://github.com/moqmar/peer2school-server.git /opt/peer2school-server && cd /opt/peer2school-server && npm install

ADD . /opt/briefing
RUN cd /opt/briefing && npm install && npm run build && ln -s .. /opt/briefing/dist/app

WORKDIR /opt/peer2school-server
ENV UI /opt/briefing/dist
ENV PORT 80
EXPOSE 80
CMD ["server.js"]
