#!/bin/bash

if [ -n "$COTURN" ]; then
  if [ -z "$TURN_SECRET" ]; then
    export TURN_SECRET=$(cat /dev/urandom | tr -cd 'a-z0-9' | head -c64)
  fi
  DOMAIN=$(echo "$COTURN" | sed "s/:.*//")
  sed -i -e "s/!!DOMAIN!!/$DOMAIN/g" -e "s/!!SECRET!!/$TURN_SECRET/g" /etc/turnserver.conf
  /usr/bin/turnserver -c /etc/turnserver.conf &
fi

cd /opt/peer2school-server
UI=/opt/briefing/dist PORT=80 node server.js &

wait -n
