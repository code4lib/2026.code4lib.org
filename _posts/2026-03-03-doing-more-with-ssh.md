---
slides: https://zenodo.org/records/18805543
layout: presentation
type: talk
categories: talks
time: 1:45 pm
startTime: 2026-03-03T13:45
length: 10
day: 2
group: 5
spot: 2
location: frist
speakers:
- corey-halpin
speaker-text: "Corey Halpin"
title: "Doing more with SSH"
---
SSH is an incredible Swiss-army chainsaw of secure networking. This talk
presents a brief overview of how the SSH protocol works, including
recommendations on how to configure SSH clients and servers for higher
security. This incorporates a brief tutorial on how to create and use ssh keys
for authentication, including the use of ssh-agent and agent forwarding so
that password-protected keys can be used relatively painlessly. An overview of
SSH's network tunneling features will be presented, including the use of
static and dynamic port forwarding, jump hosts using a ProxyCommand, and
light-weight VPNs with the ssh Tunnel feature. Discussion will also cover
tools that can extend SSH's power like [mosh](https://mosh.org/) (for
interactive terminals on high-latency networks),
[sshuttle](https://github.com/sshuttle/sshuttle) (a VPN when Tunnel won't
work), and various editor integrations.
