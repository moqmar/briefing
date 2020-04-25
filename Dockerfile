FROM node:12-alpine

RUN apk add --no-cache git && git clone https://github.com/moqmar/peer2school-server.git /opt/peer2school-server && cd /opt/peer2school-server && npm install

ADD package.json /opt/briefing/package.json
WORKDIR /opt/briefing
RUN npm install
ADD . /opt/briefing
RUN npm run build

WORKDIR /opt/peer2school-server
ENV UI /opt/briefing/dist
ENV PORT 80
EXPOSE 80
CMD ["server.js"]
