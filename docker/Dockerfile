FROM node:12

WORKDIR /opt
RUN git clone https://github.com/moqmar/briefing.git
RUN git clone https://github.com/moqmar/peer2school-server.git

# Briefing (UI)
WORKDIR /opt/briefing
RUN npm install && npm run build

# peer2school Server (Signaling)
WORKDIR /opt/peer2school-server
RUN npm install

# Coturn (see https://github.com/coturn/coturn)
RUN apt-get update && apt-get install -y coturn && apt-get clean
ADD turnserver.conf /etc/turnserver.conf

EXPOSE 80
EXPOSE 3478
EXPOSE 3478/udp
ADD init.sh /
CMD ["/init.sh"]
