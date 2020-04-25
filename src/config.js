// See https://github.com/holtwick/peer2school-server
export const SIGNAL_SERVER_URL = "ws" + window.location.protocol.substr(4) + "//" + window.location.host + window.location.pathname.replace(/[^\/]+$/, "")

// See https://github.com/feross/simple-peer#peer--new-peeropts
// See https://jsxc.readthedocs.io/en/latest/howtos/webrtc.html#configure-stun-turn-server-in-jsxc
export const ICE_CONFIG = {
  url: './peers.json',
  withCredentials: false,
}
