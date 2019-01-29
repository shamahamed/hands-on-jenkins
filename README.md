# Hands-on Continuous Integration and Automation with Jenkins

This repository contains the companion code, slides, exercises and solutions for the video course _Hands-on Continuous Integration and Automation with Jenkins_ by Packt Publishing (to be published in 2018). 

## Interact and Contribute

If you wish to ask a question, share an alternative solution to the exercises, raise a bug in the code or in the videos, or simply provide a feedback, feel free to use the [issue tracker](https://github.com/cirulls/hands-on-jenkins/issues) so that it can be visible and useful for anyone following the course. 

## Dockerfile for Jenkins Image (running dind).
Need to cleanup hacks before pull request. 
Tested on OSX:
1. Docker 1.18 : Running jenkins container as root for building app container.
  docker run --name jenkins --user root -d -p 9090:9090 -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home sa/mod_jenkins:v4
2. Unable to connect to localhost from within jenkins container to app container. 

