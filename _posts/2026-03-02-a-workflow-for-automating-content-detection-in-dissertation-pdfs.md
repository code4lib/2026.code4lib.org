---
layout: presentation
type: talk
categories: talks
time: 2:10 pm
startTime: 2026-03-02T14:10
length: 10
day: 1
group: 2
spot: 4
location: frist
speakers:
- peter-cerda
- aurelia-hudak
- rachel-woodbrook
speaker-text: "Peter Cerda, Aurelia Hudak, Rachel Woodbrook"
title: "A workflow for automating content detection in dissertation PDFs"
---
The University of Michigan Library stewards scanned and digital dissertations in its institutional repository, Deep Blue Documents. Many of these dissertations have not had their copyright status determined. We receive multiple global requests each week for access to dissertations that are restricted to campus, the default for items which have not been identified as in the public domain. For items published before 1978, a copyright requirement is a statement of copyright in the dissertation. We developed a workflow to scale detection of copyright statements in dissertations. This workflow is written into a single python script that uses PyTesseract to assess and generate Optical Character Recognition (OCR) text, and search for copyright statements in batches of dissertation PDFs. The script had an accuracy rate of over 99% for detecting true copyright statements when they are present. Following this project, we can assess how common copyright statements are in U-M dissertations before 1977 and determine how many items we may be able to release. Further, we now have a basis on which to extrapolate how much time it might take to assess all of our full PDFs for OCR, which is a necessary first step for accessibility remediation of the repository.
