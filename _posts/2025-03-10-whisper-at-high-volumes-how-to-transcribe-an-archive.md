---
layout: presentation
type: talk
categories: talks
time: 3:25 PM
startTime: 2025-03-10T15:25 
length: 10
day: 1
group: 2
spot: 5
location: friend
speakers:
- ryan-harpo-harbert
speaker-text: Ryan "Harpo" Harbert
title: "Whisper at High Volumes: How to transcribe an Archive"
---
The American Archive of Public Broadcasting (AAPB) hosts over 200,000 digitized video and audio assets from over 200 contributing stations, across many decades. A collaboration between the Library of Congress and GBH (WGBH Boston), the collection spans over 100 years of media history.

Many records contain little or no metadata, and only a small fraction have a transcript, which remains an essential tool for both accessibility and discoverability across such a large catalog. Until recently, creating transcripts at scale was prohibitively expensive, but Automatic Speech Recognition (ASR) improvements are revolutionizing our ability to easily create accurate transcripts using the Whisper family of large language models, developed by OpenAI.

This presentation continues our Code4Lib 2024 talk: "Whispering at any volume: Scalable speech recognition for all". We demonstrate several optimizations to get orders of magnitude speedups over default settings, including "distilled" models, transformer libraries, and GPU / TPU processing. We also provide multiple scaling strategies for various infrastructures with the goal of maximizing available resources.

Demonstrations and production code are all open source and available in our GitHub organization.
