---
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
Logfile analysis and monitoring can help ensure the correct operation and health of IT infrastructure. For environments with a small number of servers, standard unix tools are often sufficient for this purpose. Large environments with hundreds of servers can use observabilty platforms like the ELK stack, Grafana, or Splunk. For those of us in between those extremes of size, there does not seem to be a widely used off-the-shelf solution. This talk outlines an approach that combines standard unix tools with a variety of small text mining utilities like [angle-grinder](https://github.com/rcoh/angle-grinder), [ugrep](https://ugrep.com/), [fzf](https://junegunn.github.io/fzf/), [lnav](https://lnav.org/), and [GNU datamash](https://www.gnu.org/software/datamash/) to achieve much of the power of larger observability platforms without the need to install, configure, and manage a large software package. While the examples shown focus on logfile analysis, the strategies involved can be generalized for other corpuses of textual data.
