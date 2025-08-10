---
layout: presentation
type: talk
categories: talks
time: 4:20 PM
startTime: 2025-03-10T16:20 
length: 15
day: 1
group: 3
spot: 3
location: friend
speakers:
- owen-king
- kyeongmin-rim
- marc-verhagen
speaker-text: Owen King, Kyeongmin Rim, Marc Verhagen
title: "Cataloging Video via Computer Vision"
---
Imagine you are tasked with cataloging a large stack of books.  Suppose each book has no cover, no table of contents, and no index.  And suppose copy cataloging is not an option.  Catalogers working on large collections of old, digitized videos face a similar challenge.  A video series might have been significant enough to accession, although the content of particular videos remains obscure. Watching all the videos is impractical, and scrubbing through videos is imprecise and error-prone.  Our solution has been to provide catalogers with a visual index of each video.  The visual indexes are based on a computer vision model we trained to classify scene types, especially scenes with text, from broadcast television.  This presentation explains our development and deployment of a system for creating visual indexes, including (1) our need for specialized training data, (2) our custom tooling for labeling images at maximum speed, (3) training and evaluating our computer vision model, (4) the multimedia interchange format (MMIF) for storing media annotations, (5) our methods for creating interval-based annotations from point-wise image classifications, (6) our design of visual indexes responsive to the needs of catalogers, and (7) integration of visual indexes in our metadata workflows.
