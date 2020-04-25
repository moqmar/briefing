// See https://github.com/holtwick/peer2school-server
export const SIGNAL_SERVER_URL = "ws" + window.location.protocol.substr(4) + "//" + window.location.host + window.location.pathname.replace(/[^\/]+$/, "")

var request = new XMLHttpRequest();
request.open('GET', '/peers.json', false);  // get peers synchronously
request.send(null);

// See https://github.com/feross/simple-peer#peer--new-peeropts
export const ICE_CONFIG = JSON.parse(request.responseText);
