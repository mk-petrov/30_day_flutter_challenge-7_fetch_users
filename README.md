## 30 Day Flutter Challenge
 
 ### Motivation
 
 Doing a personal 30 day (or rather 30 apps) Flutter app challenge. These are extremely basic, non-functional type applications designed for me to have Flutter skills as adept as my ability to breathe.
 
 ---
 
 ## Day 7 - Fetch Users Application
 _Using Asynchronous Request to fetch some data_
 
 ### **Self Reflection**
 
 Not bad but I didn't realize the get method in the http package needs to be wrapped by a Future.
 
 Most important things I have learned:
 * initState is the lifecycle method equivalent to componentdidmount
 * Must install dependency http for get request
 * Must surround get request around a Future (aka Promise)
 * Once retrieved convert.jsonDecode the body
 
 Questions I am not sure about:
 * Must use [‘'] method to access a key? Can you use dot notation?
