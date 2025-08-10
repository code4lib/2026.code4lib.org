---
layout: presentation
type: talk
categories: talks
time: 11:50 AM
startTime: 2025-03-11T11:50 
length: 10
day: 2
group: 5
spot: 3
location: friend
speakers:
- jeremy-prevost
- matt-bernhardt
speaker-text: Jeremy Prevost, Matt Bernhardt
title: "A search intent detection API: or, what if we tried to understand incoming keyword searches instead of just throwing the words at a search engine and hoping?"
---
Have you ever wondered if there was a way to understand what type of search a user was doing? Have you ever considered what types of interventions might be possible if we understood a user was looking for topical information and not a specific item (or vice versa)?

We did! We created a GraphQL API that collects keywords from our search systems and are starting the process to categorize them into one of three categories: Transactional, Navigational, or Informational.

We believe if we can understand user intent, we can either build user interface interventions to help users get the information they seek more effectively, or possibly adjust our search parameters to improve relevance for the type of information the user is seeking.

Our goal is a real-time categorization system. We don't anticipate understanding every incoming term, but for those we do understand we believe we can eventually improve relevance or possibly even bypass searching altogether and just present the user with the information they are seeking.
