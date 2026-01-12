---
layout: presentation
type: talk
categories: talks
time: 1:30 pm
startTime: 2026-03-03T13:30
length: 15
day: 2
group: 5
spot: 1
location: frist
speakers:
- birkin-james-diana
speaker-text: "Birkin James Diana"
title: "Happy devs and happy patrons: the wonders of \"uv\"."
---
If I had to pick one work tool that has contributed most to my quality-of-coding-life and joyful surprise over the last year, I think it'd be `uv`.

One could say that `uv` is a python package manager, which wouldn't be wrong, but certainly doesn't capture joyful surprise. In this talk, I'd like to share how our Brown University Library team: 
- began experimenting with `uv`
- initially adopted it in a very safe, familiar way
- later began using it in a less familiar, but incredibly useful way

I'll share a few tips, lessons-learned, challenges `uv` has solved, and features it has enabled. 

But the real joyful surprise I'd like to share is from a more recent `uv` feature: it enables a new way we can be _really_ helpful to our colleagues and patrons who may not have an interest in _writing_ code, but who would love to use our useful tools. 

Paired with GitHub, we can publish all sorts of very useful utilities easily (via a github.io site) -- which users can run locally, with a one-line `uv` command, with _no_ virtual-environment/dependency headaches. Think: gathering theses & dissertations for collections-as-data work, spaCy named-entity-recognition, etc.
