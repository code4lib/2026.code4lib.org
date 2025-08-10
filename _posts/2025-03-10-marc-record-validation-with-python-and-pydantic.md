---
layout: presentation
type: talk
categories: talks
time: 4:35 PM
startTime: 2025-03-10T16:35 
length: 10
day: 1
group: 3
spot: 4
location: friend
speakers:
- charlotte-kostelic
speaker-text: Charlotte Kostelic
title: "MARC record validation with Python and Pydantic"
---
Pydantic is a widely used data validation library for Python favored for its speed and extensibility. With Pydantic users can define schema or models against which to validate data. Users receive detailed reports of any validation errors after passing data into or validating a data object against a model. In my presentation I will outline how I have used Pydantic to validate vendor-supplied MARC records to improve their quality. As NYPL has expanded the use of shelf-ready services for some research materials, we have increased the points at which we can introduce inconsistencies into our catalog. In this presentation I will describe how to define models to validate embedded order data (EOD), highlight how to customize models to account for slight differences between required fields in vendor records, and outline how to create one’s own Pydantic models. In addition to describing my pilot project to validate vendor-supplied data for shelf-ready MARC records, I will also outline how one can use Pydantic to validate the structure of MARC records. 
