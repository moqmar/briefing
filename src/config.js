// See https://github.com/holtwick/peer2school-server
export const SIGNAL_SERVER_URL = 'wss://' + window.location.host

// See https://github.com/feross/simple-peer#peer--new-peeropts
// See https://jsxc.readthedocs.io/en/latest/howtos/webrtc.html#configure-stun-turn-server-in-jsxc
export const ICE_CONFIG = {
  url: '/peers.json',
  withCredentials: false,
}
